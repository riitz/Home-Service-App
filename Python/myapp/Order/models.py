from django.db import models

#needs to change for order
class Order(models.Model):
    service_name = models.CharField(max_length=50)
    service_price = models.DecimalField(max_digits=6, decimal_places=2)
    service_image = models.CharField(max_length=100)

    def __str__(self):
        return self.service_name

class Customer_Order(models.Model):
    customer_name = models.CharField(max_length=50)
    service_price = models.DecimalField(max_digits=6, decimal_places=2)
