from django.db import models


class Admin_Details(models.Model):
    Username = models.CharField(max_length=100)
    Password = models.CharField(max_length=100)
    
    class Meta:
        db_table = 'Admin_Details'  

class User_Details(models.Model):
    First_name = models.CharField(max_length=50)
    Last_name = models.CharField(max_length=50)
    Dob = models.CharField(max_length=50,default=None)
    Gender = models.CharField(max_length=10)
    Phone = models.IntegerField(default=None)
    Email = models.EmailField()
    Username = models.CharField(max_length=100)
    Password = models.CharField(max_length=100)
    Address = models.CharField(max_length=100)
    City = models.CharField(max_length=100)
    State = models.CharField(max_length=100)

        
    class Meta:
        db_table = 'User_Details'

class Travel_Packages(models.Model):
    Package_name = models.CharField(max_length=50)
    Image1 = models.ImageField(upload_to='img/images')
    Image2 = models.ImageField(upload_to='img/images')
    Image3 = models.ImageField(upload_to='img/images')
    Desc = models.CharField(max_length=500,default=None)
    Itenary = models.CharField(max_length=10000)
    Duration = models.CharField(max_length=100)
    Price = models.IntegerField(default=None)
    City = models.CharField(max_length=1000,default=None)
    Suitable_Month = models.CharField(max_length=100)
    Suitable_group = models.CharField(max_length=100)
        
    class Meta:
        db_table = 'Travel_Packages'  

class User_Bookings(models.Model):
    Package_name = models.CharField(max_length=50)
    City = models.CharField(max_length=50,default=None)
    User_id = models.CharField(max_length=50)
    Duration = models.CharField(max_length=50)
    Travelling_Month = models.CharField(max_length=100)
    travelling_persons = models.IntegerField(default=None) 
    Group_type = models.CharField(max_length=50)
    PackageAmount = models.IntegerField(default=0)
    status = models.CharField(max_length=50,default=None)
        
    class Meta:
        db_table = 'User_Bookings'  


class User_Review(models.Model):
    productid = models.CharField(max_length=50,default=None)
    Package_name = models.CharField(max_length=50)
    City = models.CharField(max_length=50,default=None)
    month = models.CharField(max_length=50,default=None)
    User_id = models.CharField(max_length=50)
    Reviews = models.CharField(max_length=5000)
    Ratings = models.IntegerField(default=None)
        
    class Meta:
        db_table = 'User_Review' 