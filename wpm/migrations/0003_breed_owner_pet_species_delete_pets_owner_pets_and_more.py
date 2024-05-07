# Generated by Django 5.0.4 on 2024-05-05 17:34

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wpm', '0002_pets_age_pets_weight'),
    ]

    operations = [
        migrations.CreateModel(
            name='Breed',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('ideal_max_weight', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
        ),
        migrations.CreateModel(
            name='Owner',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Pet',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('species', models.CharField(max_length=100)),
                ('age', models.IntegerField(blank=True, null=True)),
                ('weight', models.DecimalField(blank=True, decimal_places=2, max_digits=5, null=True)),
                ('photo_url', models.URLField(blank=True, null=True)),
                ('breed', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='wpm.breed')),
            ],
        ),
        migrations.CreateModel(
            name='Species',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
            ],
        ),
        migrations.DeleteModel(
            name='Pets',
        ),
        migrations.AddField(
            model_name='owner',
            name='pets',
            field=models.ManyToManyField(related_name='owners', to='wpm.pet'),
        ),
        migrations.AddField(
            model_name='breed',
            name='species',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='wpm.species'),
        ),
    ]