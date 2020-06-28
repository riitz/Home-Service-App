from django.db import models


class Service(models.Model):
    service_name = models.CharField(max_length=50)
    service_price = models.DecimalField(max_digits=6, decimal_places=2)
    service_image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    service_details = models.CharField(max_length=500)


    def __str__(self):
        return self.service_name


class Favourite_Service(models.Model):
    Service = models.ForeignKey(Service, on_delete=models.CASCADE)
   # Customer = models.ForeignKey(User, on_delete=models.CASCADE)
