
from django.http import request
from rest_framework import generics, permissions, status
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from .serializers import DoctorSignupSerializer, PatientSignupSerializer, UserSerializer,Doctoronlyserializer
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.views import APIView
from .permissions import IsDoctor, IsPatient
from rest_framework.generics import ListAPIView
from users.models import Doctor, Patient
from rest_framework.filters import SearchFilter 

class DoctorSignupView(generics.GenericAPIView):
    serializer_class=DoctorSignupSerializer
    def post(self, request, *args, **kwargs):
        serializer=self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user=serializer.save()
        return Response({
            "user":UserSerializer(user, context=self.get_serializer_context()).data,
            "token":Token.objects.get(user=user).key,
            "message":"account created successfully"
        })


class PatientSignupView(generics.GenericAPIView):
    serializer_class=PatientSignupSerializer
    def post(self, request, *args, **kwargs):
        serializer=self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user=serializer.save()
        return Response({
            "user":UserSerializer(user, context=self.get_serializer_context()).data,
            "token":Token.objects.get(user=user).key,
            "message":"account created successfully"
        })

class CustomAuthToken(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer=self.serializer_class(data=request.data, context={'request':request})
        serializer.is_valid(raise_exception=True)
        user=serializer.validated_data['user']
        token, created=Token.objects.get_or_create(user=user)
        return Response({
            'token':token.key,
            'user_id':user.pk,
            'is_client':user.is_patient
        })


class LogoutView(APIView):
    def post(self, request, format=None):
        request.auth.delete()
        return Response(status=status.HTTP_200_OK)


class DoctorOnlyView(ListAPIView):
     
      queryset=Doctor.objects.all()
      serializer_class=Doctoronlyserializer
      filter_backends=[SearchFilter]
      search_fields=['speciality']

      
   

class PatientOnlyView(ListAPIView):
    
    queryset=Patient.objects.all()
    serializer_class=PatientSignupSerializer

    