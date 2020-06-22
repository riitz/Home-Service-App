from django.contrib import admin
from .models import Order, Customer_Order

# Register your models here.

admin.site.register(Order)
admin.site.register(Customer_Order)