# Generated by Django 4.1 on 2024-08-19 19:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        ("employee", "0004_employee_model"),
        ("contract", "0002_remove_contractmodel_puesto"),
    ]

    operations = [
        migrations.AlterField(
            model_name="contractmodel",
            name="empleado",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="employee.employee_model",
            ),
        ),
    ]
