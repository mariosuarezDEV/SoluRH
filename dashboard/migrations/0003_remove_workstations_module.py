# Generated by Django 4.1 on 2024-08-15 19:28

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("dashboard", "0002_work_to_module"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="workstations",
            name="module",
        ),
    ]
