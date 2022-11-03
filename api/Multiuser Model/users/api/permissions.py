from rest_framework.permissions import BasePermission



class IsDoctor(BasePermission):
    def has_permission(self, request, view):

        return bool(request.user and request.user.is_doctor)


class IsPatient(BasePermission):
    def has_permission(self, request, view):

        return bool(request.user and request.user.is_patient)