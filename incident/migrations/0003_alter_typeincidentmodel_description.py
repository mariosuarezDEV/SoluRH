# Generated by Django 5.1 on 2024-09-02 15:42

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("incident", "0002_alter_incidentmodel_employee"),
    ]

    operations = [
        migrations.AlterField(
            model_name="typeincidentmodel",
            name="description",
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]
