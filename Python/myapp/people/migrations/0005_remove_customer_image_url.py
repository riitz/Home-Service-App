# Generated by Django 3.0.6 on 2020-05-25 05:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0004_customer_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='customer',
            name='image_url',
        ),
    ]