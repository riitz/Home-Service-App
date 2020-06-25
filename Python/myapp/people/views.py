from rest_framework.viewsets import GenericViewSet
from rest_framework.mixins import CreateModelMixin
from django.contrib.auth import get_user_model
from .serializers import CustomerUserSerializer, CustomerProfileSerializer, \
    EmployeeProfileSerializer, EmployeeUserSerializer
from .models import Customer, Employee


class CreateCustomerUserView(CreateModelMixin, GenericViewSet):
    queryset = get_user_model().objects.all()
    serializer_class = CustomerUserSerializer


class CustomerProfileView(CreateModelMixin, GenericViewSet):
    queryset = Customer.objects.all()
    serializer_class = CustomerProfileSerializer


class EmployeeProfileView(CreateModelMixin, GenericViewSet):
    queryset = Employee.objects.all()
    serializer_class = EmployeeProfileSerializer


class CreateEmployeeUserView(CreateModelMixin, GenericViewSet):
    queryset = get_user_model().objects.all()
    serializer_class = EmployeeUserSerializer
