from django.db import models

# Create your models here.
class Pet(models.Model):
    name = models.CharField(max_length=100)
    age = models.IntegerField(null=True, blank=True)
    weight = models.DecimalField(max_digits=5, decimal_places=2, null=True, blank=True)
    photo_url = models.URLField(null=True, blank=True)  # Assuming the PhotoUrl property is a URL
    # Assuming Breed is another model, you need to define a ForeignKey relationship
    breed = models.ForeignKey('Breed', on_delete=models.CASCADE)
    owner = models.ForeignKey('Owner', on_delete=models.CASCADE, null=True, blank=True)

class Breed(models.Model):
    name = models.CharField(max_length=100)
    ideal_max_weight = models.DecimalField(max_digits=10, decimal_places=2)
    # Assuming Species is another model, define a ForeignKey relationship
    species = models.ForeignKey('Species', on_delete=models.CASCADE)

class Owner(models.Model):
    name = models.CharField(max_length=100)
    # Assuming Pet is another model, define a ManyToManyField relationship
    pets = models.ManyToManyField('Pet', related_name='owners')

class Species(models.Model):
    name = models.CharField(max_length=100)