# Generated by Django 4.1 on 2024-08-19 19:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        ("employee", "0004_employee_model"),
        ("incident", "0002_alter_incidentmodel_employee"),
        ("company", "0001_initial"),
        ("contract", "0003_alter_contractmodel_empleado"),
        ("positon", "0001_initial"),
    ]

    operations = [
        migrations.DeleteModel(
            name="employeModel",
        ),
        migrations.AddField(
            model_name="employee_model",
            name="puesto",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE, to="positon.positionmodel"
            ),
        ),
        migrations.AddField(
            model_name="employee_model",
            name="sucursal",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE, to="company.companymodel"
            ),
        ),
    ]
