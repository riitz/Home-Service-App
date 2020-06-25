from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view

from myapp.people.api.serializers import CustomerRegistrationSerializer


@api_view(['POST', ])
def registration_view(request):
    if request.method == 'POST':
        serializer = CustomerRegistrationSerializer(data=request.data)
        data = {}
        if serializer.is_valid():
            people = serializer.save()
            data['response'] = "sucessfully registered new user"
            data['email'] = people.email
            data['username'] = people.username
        else:
            data = serializer.errors
        return Response(data)