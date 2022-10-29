
from rest_framework.authtoken.models import Token
from rest_framework import generics,status
from rest_framework.views import APIView
from rest_framework.response import Response
from app.api import permissions


from app.api.permissions import IsDeveloper, IsDoctor, IsPatient
from .serializers import UserSerializer,DoctorSerializer,DeveloperSerializer,PatientSerializer
from rest_framework.authtoken.views import ObtainAuthToken


class PatientSignupView(generics.GenericAPIView):
    serializer_class = PatientSerializer
    def post(self,request,*args,**kwargs):
        serializer = self.get_serializer(data = request.data)
        serializer.is_valid(raise_exception = True)
        user = serializer.save()
        return Response({
            "user":UserSerializer(user,context = self.get_serializer_context()).data,
            "token":Token.objects.get(user =user).key,
            "message":"account created successfully"
        })


class DoctorSignupView(generics.GenericAPIView):
    serializer_class = DoctorSerializer
    def post(self,request,*args,**kwargs):
        serializer = self.get_serializer(data = request.data)
        serializer.is_valid(raise_exception = True)
        user = serializer.save()
        return Response({
            "user":UserSerializer(user,context = self.get_serializer_context()).data,
            "token":Token.objects.get(user =user).key,
            "message":"account created successfully"
        })


class DeveloperSignupView(generics.GenericAPIView):
    serializer_class = DeveloperSerializer
    def post(self,request,*args,**kwargs):
        serializer = self.get_serializer(data = request.data)
        serializer.is_valid(raise_exception = True)
        user = serializer.save()
        return Response({
            "user":UserSerializer(user,context = self.get_serializer_context()).data,
            "token":Token.objects.get(user =user).key,
            "message":"account created successfully"
        })


class CustomAuthToken(ObtainAuthToken):
    def post(self,request,*args,**kwargs):
        serializer = self.serializer_class(data = request.data,context ={'request':'request'})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token,created =Token.objects.get_or_create(user = user)
        return Response({
            'token':token.key,
            'user_id':user.pk,
            'is_doctor':user.is_doctor
        })


class LogoutView(APIView):
    def post(self,request,format = None):
        request.auth.delete()
        return Response(status=status.HTTP_200_OK)


class DoctorOnlyView(generics.RetrieveAPIView):
    permission_classes = [permissions.IsAuthenticated & IsDoctor]
    serializer_class = UserSerializer

    def get_object(self):
        return self.request.user


class PatientOnlyView(generics.RetrieveAPIView):
    permission_classes = [permissions.IsAuthenticated & IsPatient]
    serializer_class = UserSerializer

    def get_object(self):
        return self.request.user


class DeveloperOnlyView(generics.RetrieveAPIView):
    permission_classes = [permissions.IsAuthenticated & IsDeveloper]
    serializer_class = UserSerializer

    def get_object(self):
        return self.request.user
