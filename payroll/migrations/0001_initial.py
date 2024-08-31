# Generated by Django 5.0.8 on 2024-08-31 16:12

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ("employee", "0008_alter_employee_model_nacionalidad_and_more"),
    ]

    operations = [
        migrations.CreateModel(
            name="modelo_nomina",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("fecha_pago", models.DateField()),
                (
                    "ajuste_incidencias_deduccion",
                    models.DecimalField(decimal_places=2, max_digits=10),
                ),
                (
                    "ajuste_incidencias_aumento",
                    models.DecimalField(decimal_places=2, max_digits=10),
                ),
                (
                    "salario_subtotal",
                    models.DecimalField(decimal_places=2, max_digits=10),
                ),
                ("salario_total", models.DecimalField(decimal_places=2, max_digits=10)),
                (
                    "empleado",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="employee.employee_model",
                    ),
                ),
            ],
        ),
    ]