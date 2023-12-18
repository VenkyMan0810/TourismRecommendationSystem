from django.shortcuts import render,redirect
from .models import Travel_Packages, User_Details,Admin_Details, User_Bookings,User_Review
from django.contrib import messages
from django.contrib.sessions.models import Session
import datetime
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from django.db.models import Avg, Max, Min, Sum, Count

# Create your views here.
def home(request):
    if request.method == 'POST':
        pass
    else:
        c = 'surya is a boy' 
        s = 'sandde'
        if s in c:
            print('true')
        else:
            print('false')

        return render(request, 'home.html', {})

def Admin_login(request):
    if request.method == 'POST':
        Username = request.POST['Username']
        password = request.POST['password']
        
        if Admin_Details.objects.filter(Username=Username, Password=password).exists():
                user = Admin_Details.objects.get(Username=Username, Password=password)
                request.session['type_id'] = 'Admin'
                request.session['login'] = 'Yes'
                return redirect('/Dashboard/')
        else:
            messages.info(request,'Invalid Credentials')
            return redirect('/Admin_login/')
    else:
        return render(request, 'Admin_login.html', {})


def User_login(request):
    if request.method == 'POST':
        Username = request.POST['Username']
        password = request.POST['password']
        
        if User_Details.objects.filter(Username=Username, Password=password).exists():
                user = User_Details.objects.get(Username=Username, Password=password)
                request.session['customer_id'] = str(user.id)
                request.session['type_id'] = 'User'
                request.session['login'] = 'Yes'
                return redirect('/Dashboard/')
        else:
            messages.info(request,'Invalid Credentials')
            return redirect('/User_login/')

    else:
        return render(request, 'User_login.html', {})


def Register(request):
    if request.method == 'POST':           
        First_name = request.POST['First_name']
        Last_name = request.POST['Last_name']
        Username = request.POST['Username']
        Dob = request.POST['Dob']
        Gender = request.POST['Gender']
        Phone = request.POST['Phone']
        Email = request.POST['Email']
        Password = request.POST['Password']
        Address1 = request.POST['Address1']
        Address2 = request.POST['Address2']
        City = request.POST['City']
        State = request.POST['State']
        final_address = Address1+ " " + Address2
        register = User_Details( First_name=First_name, Last_name=Last_name, Dob=Dob, Gender=Gender ,Phone= Phone,Email= Email,Username= Username,Password=Password,Address=final_address,City=City,State=State)
        register.save()
        messages.info(request,'User Register Successfully')
        return redirect('/User_login/')
    else:
        return render(request, 'Register.html', {})

def Dashboard(request):
    if request.method == 'POST':
        pass
    else:
        Packages = Travel_Packages.objects.all()
        return render(request, 'Dashboard.html', {'Packages':Packages})

def Packagedetails(request,id):
    if request.method == 'POST':
        PackageName = request.POST['hiddenpname']
        print(PackageName)
        City = request.POST['TravellingFromCity']
        print(City)

        PCity = request.POST['packagecity']
        print(PCity)

        sessId = request.session['customer_id'] 
        #sessId = request.session.get('customer_id', [])
        print('userid')
        print(sessId)
        userid = int(sessId)
        Duration = request.POST['hiddenduration']
        print(Duration)
        TravellingDate = request.POST['travellingdate']
        print(TravellingDate)
        TravellersCount = request.POST['travellercount']
        print(TravellersCount)
        GroupType = request.POST['grouptype']
        print(GroupType)
        PackageAmount = request.POST['TotalPackageAmount']
        print(PackageAmount)
        Review = request.POST['hiddencomment']
        print(Review)
        Rating = request.POST['hiddenrating']
        print(Rating)
        Month= request.POST['month']
        print(Month)
        productid = request.POST['productid']
        print(Rating)

        Reviewdiv = request.POST['hidediv']
        print(Reviewdiv)

        if Reviewdiv == '2':
            userbooking = User_Bookings( Package_name=PackageName, City=City, User_id=userid, Duration=Duration ,Travelling_Month= TravellingDate,travelling_persons= TravellersCount,Group_type= GroupType,PackageAmount=PackageAmount,status='Not Confirmed')
            userbooking.save()

            review = User_Review(productid=productid, Package_name=PackageName,City=PCity, User_id=userid, Reviews=Review, Ratings=Rating ,month=Month)
            review.save()

            messages.info(request,'booking and review saved Successfully')
            print("booking and review")
        else:
            userbooking = User_Bookings(  Package_name=PackageName, City=City, User_id=userid, Duration=Duration ,Travelling_Month= TravellingDate,travelling_persons= TravellersCount,Group_type= GroupType,PackageAmount=PackageAmount,status='Not Confirmed')
            userbooking.save()
            messages.info(request,'Booking saved Successfully')
            print("Only booking")



        return redirect('Dashboard')
    else: 
        reviews = User_Review.objects.all().filter(productid=id)
        Packages = Travel_Packages.objects.get(id=id)
        return render(request, 'Productdetails.html', {'Packages':Packages , 'reviews':reviews})



def Recommend(request):
    print('enter')
    Cityfield = request.POST.get('city')
    print(Cityfield)
    groupfield = request.POST.get('group')
    print(groupfield)
    monthfield = request.POST.get('month')
    print(monthfield)
    pidfield = request.POST.get('pid')
    print(pidfield)
    pcityfield = request.POST.get('pcity')
    

    reviewcount = User_Review.objects.filter(month=monthfield,productid=pidfield).count()
    packages = Travel_Packages.objects.all().filter(id=pidfield)
    packagecity = packages[0].City

    if reviewcount > 0 :
        averagecount = User_Review.objects.filter(month=monthfield,City=packagecity).count()

        #
        if averagecount > 0 :
            Dev_features = User_Review.objects.annotate(average=Avg('Ratings')).filter(month=monthfield,City=packagecity)
            print(Dev_features[0].average)
            prefmonth = packages[0].Suitable_Month
            print(prefmonth)
            prefgroup = packages[0].Suitable_group
            print(prefgroup) 
            if prefmonth in monthfield:
                monthvalue = 1
            else:
                monthvalue = 0
            if prefgroup == groupfield:
                groupvalue = 1
            else:
                groupvalue = 0

            totalvalue = int(Dev_features[0].average)+int(monthvalue)+int(groupvalue)
            if float(totalvalue) > 3.5:
                answer = 'Recommended'
            else:
                answer = 'Not Recommended'

            

        else:
            print('enter else')
            prefmonth = packages[0].Suitable_Month
            prefgroup = packages[0].Suitable_group
            if prefmonth in monthfield:
                monthvalue = 1
            else:
                monthvalue = 0
            print(monthvalue)
            if prefgroup == groupfield:
                groupvalue = 1
            else:
                groupvalue = 0
            print(groupvalue)
            totalvalue = int(monthvalue)+int(groupvalue)            
            if float(totalvalue) == 2:
                answer = 'Recommended'
            else:
                answer = 'Not Recommended'

    else:
        print('enter else')
        prefmonth = packages[0].Suitable_Month
        prefgroup = packages[0].Suitable_group
        if prefmonth in monthfield:
            monthvalue = 1
        else:
            monthvalue = 0
        print(monthvalue)
        if prefgroup == groupfield:
            groupvalue = 1
        else:
            groupvalue = 0
        print(groupvalue)
        totalvalue = int(monthvalue)+int(groupvalue)
        if float(totalvalue) == 2:
            answer = 'Recommended'
        else:
            answer = 'Not Recommended'
        
           


    

    data = {
        'respond': answer
            }
    return JsonResponse(data)



def AddPackages(request):
    if request.method == 'POST':
        Package_name = request.POST['Package_Name']
        Image1 = request.FILES['Image_upload1']
        Image2 = request.FILES['Image_upload2']
        Image3 = request.FILES['Image_upload3']
        Description = request.POST['Description']
        Itinerary1 = request.POST['Itinerary1']
        Itinerary2 = request.POST['Itinerary2']
        Itinerary3 = request.POST['Itinerary3']
        Price = request.POST['Price']
        Duration = request.POST['Duration']
        City = request.POST['City']
        Suitable_Month = request.POST['Month']
        Suitable_Group = request.POST['Group']

        final_itenary = Itinerary1+" " + Itinerary2+" " + Itinerary3
        addpackage = Travel_Packages( Package_name=Package_name, Image1=Image1, Image2=Image2, Image3=Image3 ,Desc= Description,Itenary= final_itenary,Duration= Duration,Price=Price,City=City,Suitable_Month=Suitable_Month,Suitable_group=Suitable_Group)
        addpackage.save()
        messages.info(request,'Package Added Successfully')
        return redirect('/AddPackages/')
    else:
        return render(request, 'AddPackages.html', {})


def ManagePackage(request):
    if request.method == 'POST':
        pass
    else:
        Packages = Travel_Packages.objects.all()
        return render(request, 'ManagePackage.html', {'Packages':Packages})


def ViewBooking(request):
    if request.method == 'POST':
        pass
    else:
        Packages = User_Bookings.objects.all().filter(status='Not Confirmed')
        
        return render(request, 'ViewBooking.html', {'Packages':Packages})


def ViewUsers(request):
    if request.method == 'POST':
        pass
    else:
        Users = User_Details.objects.all()
        return render(request, 'ViewUsers.html', {'Users':Users})


def logout(request):
    Session.objects.all().delete()
    messages.info(request,'Account logout')
    return redirect('/')



def updatestatus(request,id):
    User_Bookings.objects.filter(id=id).update(status='Confirmed')
    messages.info(request,'Order Accepted')
    return redirect('/ViewBooking/',{})





def updatePackage(request,id):
    if request.method == 'POST':
        Package_name = request.POST['Package_Name']
        Image3 = request.FILES['Image_upload3']
        Description = request.POST['Description']
        final_itenary = request.POST['Itinerary1']
        Price = request.POST['Price']
        pid = request.POST['pid']
        Duration = request.POST['Duration']
        City = request.POST['City']
        Suitable_Month = request.POST['Month']
        Suitable_Group = request.POST['Group']
        #Travel_Packages.objects.filter(id=pid).update( Package_name=Package_name, Image3=Image3,Desc= Description,Itenary= final_itenary,Duration= Duration,Price=Price,City=City,Suitable_Month=Suitable_Month,Suitable_group=Suitable_Group)
        #addpackage = Travel_Packages( Package_name=Package_name, Image1=Image3 ,Image2=Image3 ,Image3=Image3 ,Desc= Description,Itenary= final_itenary,Duration= Duration,Price=Price,City=City,Suitable_Month=Suitable_Month,Suitable_group=Suitable_Group)
        #addpackage.save()
        user_profile = Travel_Packages.objects.get(id=pid)
        user_profile.Package_name=Package_name 
        user_profile.Image3=Image3
        user_profile.Desc= Description
        user_profile.Itenary= final_itenary
        user_profile.Duration= Duration
        user_profile.Price=Price
        user_profile.City=City
        user_profile.Suitable_Month=Suitable_Month
        user_profile.Suitable_group=Suitable_Group
        user_profile.save()


        messages.info(request,'Package Updated Successfully')
        return redirect('/AddPackages/')
    else:
        Packages = Travel_Packages.objects.get(id=id)
        return render(request, 'updatePackage.html', {'Packages':Packages})
        