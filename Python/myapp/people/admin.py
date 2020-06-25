from django.contrib import admin

from .models import User, Role, Customer, Employee

# Register your models here.
admin.site.register(User)
admin.site.register(Role)
admin.site.register(Customer)
admin.site.register(Employee)




