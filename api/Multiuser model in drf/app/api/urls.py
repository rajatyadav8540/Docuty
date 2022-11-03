from django.urls import path

from .views import DeveloperOnlyView, DoctorOnlyView, LogoutView, PatientOnlyView, PatientSignupView,DoctorSignupView,DeveloperSignupView,CustomAuthToken

urlpatterns=[
    path('signup/patient/',PatientSignupView.as_view()),
    path('signup/doctor/',DoctorSignupView.as_view()),
    path('signup/developer/',DeveloperSignupView.as_view()),
    path('login/',CustomAuthToken.as_view(), name='aut_token'),
    path('logout/',LogoutView.as_view(),name='logout_view'),
    path('patient/dashboard/',PatientOnlyView.as_view(),name = 'patientonly'),
    path('doctor/dashboard/',DoctorOnlyView.as_view(),name = 'doctortonly'),
    path('doctor/dashboard/',DeveloperOnlyView.as_view(),name = 'developertonly'),

   ]