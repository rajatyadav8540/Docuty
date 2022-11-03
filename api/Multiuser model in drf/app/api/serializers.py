
from rest_framework import serializers
from app.models import User,Developer,Doctor,Patient

class UserSerializer(serializers.ModelSerializer):
    class Meta:
         model =User
         fields = ['username','email','is_doctor','is_patient','is_developer']


class PatientSerializer(serializers.ModelSerializer):
    password2 =serializers.CharField(style={'input_type':'password'},write_only = True)
    class Meta:
        model = User
        fields =['username','email','password','password2']

        extra_kwargs = {
            'password':{'write_only':True}
        }

    def save(self,**kwargs):
        user = User(
            username = self.validated_data['username'],
            email = self.validated_data['email'],  
        )

        password = self.validated_data['password'],
        password2= self.validated_data['password'],  
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})

        user.set_password('password')
        user.is_patient = True
        user.save()
        Patient.objects.create(user=user)
        return user 


class DoctorSerializer(serializers.ModelSerializer):
    password2 =serializers.CharField(style={'input_type':'password'},write_only = True)
    class Meta:
        model = User
        fields =['username','email','password','password2']

        extra_kwargs = {
            'password':{'write_only':True}
        }

    def save(self,**kwargs):
        user = User(
            username = self.validated_data['username'],
            email = self.validated_data['email'],  
        )

        password = self.validated_data['password'],
        password2= self.validated_data['password'],  
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})

        user.set_password('password')
        user.is_doctor = True
        user.save()
        Doctor.objects.create(user=user)
        return user 


class DeveloperSerializer(serializers.ModelSerializer):
    password2 =serializers.CharField(style={'input_type':'password'},write_only = True)
    class Meta:
        model = User
        fields =['username','email','password','password2']

        extra_kwargs = {
            'password':{'write_only':True}
        }


    def save(self,**kwargs):
        user = User(
            username = self.validated_data['username'],
            email = self.validated_data['email'],  
        )

        password = self.validated_data['password'],
        password2= self.validated_data['password'],  
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})

        user.set_password('password')
        user.is_developer = True
        user.save()
        Developer.objects.create(user=user)
        return user 