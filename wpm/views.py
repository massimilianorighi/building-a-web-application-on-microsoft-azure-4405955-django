from django.shortcuts import render, redirect, get_object_or_404
from django.db import IntegrityError
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Pet, Breed, Species, Owner
from .forms import PetForm

@csrf_exempt
def home(request):
    # Logic for the Home section
    print('Request for index page received')
    return render(request, 'wpm/home.html')

@csrf_exempt
def privacy(request):
    # Logic for the Privacy section
    print('Request for privacy page received')
    return render(request, 'wpm/privacy.html')

@csrf_exempt
def pets(request):
    # Logic for the Pets section
    print('Request for pets page received')
    animals = Pet.objects.all()
    return render(request, 'wpm/pets.html', {'animals': animals})

@csrf_exempt
def add_pet(request):
    if request.method == 'POST':
        # Handle form submission and save the new pet
        name = request.POST.get('name')
        age = request.POST.get('age')
        weight = request.POST.get('weight')
        breed_name = request.POST.get('breed')
        species_name = request.POST.get('species')
        new_species_name = request.POST.get('new_species')  # New species name if provided

        # Check if the species is selected or a new one is entered
        if species_name == 'new' and new_species_name:
            # Create a new species instance if a new species name is provided
            species_instance = Species.objects.create(name=new_species_name)
        else:
            # Try to retrieve the Species instance corresponding to the provided species name
            try:
                species_instance = Species.objects.get(id=species_name)
            except Species.DoesNotExist:
                # If the species doesn't exist and no new species name provided, return an error
                return render(request, 'wpm/error.html', {'message': 'Invalid species name'})

        # Try to retrieve the Breed instance corresponding to the provided breed name and species
        try:
            breed_instance = Breed.objects.get(name=breed_name, species=species_instance)
        except Breed.DoesNotExist:
            # If the breed doesn't exist, create a new Breed instance with the provided name and species
            breed_instance = Breed.objects.create(name=breed_name, ideal_max_weight=0, species=species_instance)

        # Create the new pet with the retrieved or newly created Breed instance
        try:
            Pet.objects.create(name=name, age=age, weight=weight, breed=breed_instance)
            return redirect('pets')  # Redirect to the page listing all pets after saving
        except IntegrityError:
            # Handle integrity error, e.g., if a unique constraint fails
            return render(request, 'wpm/error.html', {'message': 'Failed to create pet'})

    # If it's not a POST request, render the form page
    species_list = Species.objects.all()
    return render(request, 'wpm/pets/create.html', {'species_list': species_list})

@csrf_exempt
def pet_detail(request, pet_id):
    pet = get_object_or_404(Pet, pk=pet_id)
    return render(request, 'wpm/pets/details.html', {'pet': pet})

@csrf_exempt
def pet_edit(request, pet_id):
    # Retrieve the pet object using the pet_id
    pet = get_object_or_404(Pet, pk=pet_id)
    
    breeds = Breed.objects.all()
    # owners = Owner.objects.all()
    
    context = {
        'pet': pet,
        'breeds': breeds,
        # 'owners': owners
    }
    
    # Render the edit pet template with the form and pet object
    return render(request, 'wpm/pets/edit.html', context)

def error_404(request, exception):
    return render(request, 'wpm/error.html', {'title': '404 - Page Not Found'}, status=404)

def error_500(request):
    return render(request, 'wpm/error.html', {'title': '500 - Internal Server Error'}, status=500)