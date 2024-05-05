from django.urls import path
from . import views

handler404 = 'wpm.views.error_404'
handler500 = 'wpm.views.error_500'

urlpatterns = [
    path('', views.home, name='home'),
    path('pets/', views.pets, name='pets'),
    path('create/', views.add_pet, name='add_pet'),
    path('details/<int:pet_id>/', views.pet_detail, name='pet_detail'),
    path('edit/<int:pet_id>/', views.pet_edit, name='pet_edit'),
    path('privacy/', views.privacy, name='privacy'),
]