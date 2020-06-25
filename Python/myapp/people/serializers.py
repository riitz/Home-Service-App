from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from django.contrib.auth import get_user_model
from .models import Customer, Employee

UserModel = get_user_model()


class CustomerUserSerializer(ModelSerializer):
    password = serializers.CharField(write_only=True)

    def create(self, validated_data):
        user = UserModel.objects.create_user(
            email=validated_data['email'],
            password=validated_data['password'],
            first_name=validated_data['first_name'],
            last_name=validated_data['last_name'],
            is_customer=True,
            is_employee=False,

        )

        return user

    class Meta:
        model = UserModel
        fields = ('password', 'email', 'first_name', 'last_name')


class CustomerProfileSerializer(serializers.ModelSerializer):
    """Serializer for customer profiles"""

    class Meta:
        model = Customer
        fields = '__all__'


class EmployeeProfileSerializer(serializers.ModelSerializer):
    """Serializer for customer profiles"""

    class Meta:
        model = Employee
        fields = '__all__'


class EmployeeUserSerializer(ModelSerializer):
    password = serializers.CharField(write_only=True)

    def create(self, validated_data):
        user = UserModel.objects.create_user(
            email=validated_data['email'],
            password=validated_data['password'],
            first_name=validated_data['first_name'],
            last_name=validated_data['last_name'],
            is_customer=False,
            is_employee=True,
        )
        return user

    class Meta:
        model = UserModel
        fields = ('password', 'email', 'first_name', 'last_name',)
