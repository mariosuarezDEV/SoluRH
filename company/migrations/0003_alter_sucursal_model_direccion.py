# Generated by Django 5.1 on 2024-09-02 15:19

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("company", "0002_rename_companymodel_sucursal_model"),
    ]

    operations = [
        migrations.AlterField(
            model_name="sucursal_model",
            name="direccion",
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
