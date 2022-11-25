from rest_framework import serializers

from users.models import User,Doctor,Patient


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields=['username', 'email', 'is_patient']

class DoctorSignupSerializer(serializers.ModelSerializer):
    
    password2=serializers.CharField(style={"input_type":"password"}, write_only=True)
    
    city=serializers.CharField(write_only=True)
    experience=serializers.CharField(write_only=True)
    speciality=serializers.CharField(write_only=True)
    class Meta:
        model=User
        user=UserSerializer(required=True)
        fields=['username','email','password', 'password2','city','experience','speciality']
        extra_kwargs={
            'password':{'write_only':True}
        }
    
    def save(self, **kwargs):
        user=User(
            username=self.validated_data['username'],
            email=self.validated_data['email']
        )
        password=self.validated_data['password']
        password2=self.validated_data['password2']
        
        city=self.validated_data['city']
        experience=self.validated_data['experience']
        speciality=self.validated_data['speciality']
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})
        user.set_password(password)
        user.is_doctor=True
        user.save()
        Doctor.objects.create(user=user,city=city,experience=experience,speciality=speciality)
        return user


class PatientSignupSerializer(serializers.ModelSerializer):
    password2=serializers.CharField(style={"input_type":"password"}, write_only=True)
    class Meta:
        model=User
        fields=['username','email','password', 'password2']
        extra_kwargs={
            'password':{'write_only':True}
        }
    

    def save(self, **kwargs):
        user=User(
            username=self.validated_data['username'],
            email=self.validated_data['email']
        )
        password=self.validated_data['password']
        password2=self.validated_data['password2']
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})
        user.set_password(password)
        user.is_patient=True
        user.save()
        Patient.objects.create(user=user)
        return user

        
class Doctoronlyserializer(serializers.ModelSerializer):
    class Meta:
        model=Doctor
        fields='__all__'
