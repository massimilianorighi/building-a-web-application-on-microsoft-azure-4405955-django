from django import forms
from .models import Pet

class PetForm(forms.ModelForm):
    class Meta:
        model = Pet
        fields = ['name', 'age', 'weight', 'breed', 'owner']  # Include the fields you want to edit
        widgets = {
            'owner': forms.SelectMultiple(attrs={'class': 'form-control'}),
            'breed': forms.Select(attrs={'class': 'form-control'}),
        }