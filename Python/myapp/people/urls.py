from rest_framework.routers import DefaultRouter
from .views import CreateCustomerUserView, CreateEmployeeUserView, CustomerProfileView, EmployeeProfileView

router = DefaultRouter()
router.register(r'createCustomer', CreateCustomerUserView, CustomerProfileView),
router.register(r'createCustomerProfile', CustomerProfileView),
router.register(r'createEmployeeProfile', EmployeeProfileView),


router.register(r'createEmployee', CreateEmployeeUserView),

urlpatterns = router.urls