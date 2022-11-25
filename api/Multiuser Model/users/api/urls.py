from django.urls import path
from .views import ( DoctorSignupView,
 PatientSignupView,
 CustomAuthToken, LogoutView, DoctorOnlyView, PatientOnlyView)

urlpatterns=[
    path('signup/doctor/', DoctorSignupView.as_view()),
    path('signup/patient/', PatientSignupView.as_view()),
    path('login/',CustomAuthToken.as_view(), name='auth-token'),
    path('logout/', LogoutView.as_view(), name='logout-view'),
    path('doctor/dashboard/', DoctorOnlyView.as_view(), name='doctor-dashboard'),
    path('patient/dashboard/', PatientOnlyView.as_view(), name='patient-dashboard'),
]