from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('Admin_login/', views.Admin_login, name='Admin_login'),
    path('User_login/', views.User_login, name='User_login'),
    path('Register/', views.Register, name='Register'),
    path('Dashboard/', views.Dashboard, name='Dashboard'),
    path('Packagedetails/<int:id>', views.Packagedetails, name='Packagedetails'),
    path('AddPackages/', views.AddPackages, name='AddPackages'),
    path('ManagePackage/', views.ManagePackage, name='ManagePackage'),
    path('ViewBooking/', views.ViewBooking, name='ViewBooking'),
    path('ViewUsers/', views.ViewUsers, name='ViewUsers'),
    path('logout/', views.logout, name='logout'),
    path('get_response/', views.Recommend, name='get_response'),
    path('updatePackage/<int:id>', views.updatePackage, name='updatePackage'),
    path('updatestatus/<int:id>', views.updatestatus, name='updatestatus')
]
