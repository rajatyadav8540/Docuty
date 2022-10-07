

from django.urls import path,include
from app.views import UserRegistrationView

urlpatterns = [
    path('register/',UserRegistrationView.as_view(),name='register'),
    
]
