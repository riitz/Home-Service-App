from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser, BaseUserManager, PermissionsMixin
)
from django.dispatch import receiver
from django.utils import timezone
from django.utils.translation import gettext_lazy as _

from django.db.models.signals import post_save, pre_save


class Role(models.Model):
    ELECTRICIAN = 1
    PLUMBER = 2
    PAINTER = 3
    BEAUTICIAN = 4
    CLEANER = 5

    ROLE_CHOICES = (
        (ELECTRICIAN, 'Electrician'),
        (PLUMBER, 'Plumber'),
        (PAINTER, 'Painter'),
        (BEAUTICIAN, 'Beautician'),
        (CLEANER, 'Cleaner'),
    )

    id = models.PositiveSmallIntegerField(choices=ROLE_CHOICES, primary_key=True)

    def __str__(self):
        return self.get_id_display()


class UserManager(BaseUserManager):
    def create_user(self, email, first_name, last_name, password=None, commit=True):
        if not email:
            raise ValueError(_('User must have an email address'))
        if not first_name:
            raise ValueError(_('User must have an First Name'))
        if not last_name:
            raise ValueError(_('User must have an last Name'))
       # if is_customer:
       #     print("Customer ")
       # if is_employee:
       #     print("Employee")

        user = self.model(
            email=self.normalize_email(email),
            first_name=first_name,
            last_name=last_name,
          #  is_customer=is_customer,
          #  is_employee=is_employee,

        )
        user.set_password(password)

        if commit:
            user.save(using=self._db)
        return user

    def create_superuser(self, email, first_name, last_name, password):
        """
        Creates and saves a superuser with the given email, first name,
        last name and password.
        """
        user = self.create_user(
            email,
            password=password,
            first_name=first_name,
            last_name=last_name,
            commit=False,
        )
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)
        return user


class User(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(verbose_name='email address', max_length=255, unique=True)
    first_name = models.CharField(_('first name'), max_length=30, blank=True)
    last_name = models.CharField(_('last name'), max_length=150, blank=True)
   # is_customer = models.BooleanField(default=False)
   # is_employee = models.BooleanField(default=False)

    is_active = models.BooleanField(
        _('active'),
        default=True,
        help_text=_(
            'Designates whether this user should be treated as active. '
            'Unselect this instead of deleting accounts.'
        ),
    )
    is_staff = models.BooleanField(
        _('staff status'),
        default=False,
        help_text=_(
            'Designates whether the user can log into this admin site.'
        ),
    )
    # is_superuser field provided by PermissionsMixin
    # groups field provided by PermissionsMixin
    # user_permissions field provided by PermissionsMixin

    date_joined = models.DateTimeField(
        _('date joined'), default=timezone.now
    )

    objects = UserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['first_name', 'last_name']

    def get_full_name(self):
        """
        Return the first_name plus the last_name, with a space in between.
        """
        full_name = '%s %s' % (self.first_name, self.last_name)
        return full_name.strip()

    def __str__(self):
        return '{} <{}>'.format(self.get_full_name(), self.email)

    def has_perm(self, perm, obj=None):
        """Does the user have a specific permission?"""
        # Simplest possible answer: Yes, always
        return True

    def has_module_perms(self, app_label):
        """Does the user have permissions to view the app `app_label`?"""
        # Simplest possible answer: Yes, always
        return True


#@receiver(post_save, sender=User)
#def save_user(sender, instance, created, **kwargs):
 #   if created:
  #      if instance.is_customer:
   #         # Customer.objects.create(user=instance),
    #        customer = Customer(user=instance)
     #       customer.save()
     #   if instance.is_employee:
      #      Employee.objects.create(user=instance)


#post_save.connect(save_user, sender=User)


class Customer(models.Model):
    phone_number = models.CharField(max_length=12)
    # user = models.ForeignKey(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)

    def __str__(self):
        return self.user.email


class Employee(models.Model):
    # user = models.ForeignKey(User, on_delete=models.CASCADE)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    # role = models.ForeignKey(Role, on_delete=models.CASCADE, choices=Role.ROLE_CHOICES)

    role = models.ManyToManyField(Role, choices=Role.ROLE_CHOICES)

    def __str__(self):
        return self.user.email
