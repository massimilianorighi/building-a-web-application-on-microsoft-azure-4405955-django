from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def home(request):
    # Logic for the Home section
    print('Request for index page received')
    return render(request, 'wpm/home.html')

@csrf_exempt
def pets(request):
    # Logic for the Pets section
    print('Request for pets page received')
    return render(request, 'wpm/pets.html')

@csrf_exempt
def privacy(request):
    # Logic for the Privacy section
    print('Request for privacy page received')
    return render(request, 'wpm/privacy.html')