# Generated by Django 3.0.6 on 2020-06-04 08:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('service_name', models.CharField(max_length=50)),
                ('service_price', models.DecimalField(decimal_places=2, max_digits=6)),
                ('service_image', models.ImageField(default='default.jpg', upload_to='profile_pics')),
                ('service_details', models.CharField(max_length=500)),
            ],
        ),
        migrations.CreateModel(
            name='Favourite_Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Service', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Service.Service')),
            ],
        ),
    ]
