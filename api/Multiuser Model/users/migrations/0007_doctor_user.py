# Generated by Django 4.0 on 2022-11-10 14:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_remove_doctor_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctor',
            name='user',
            field=models.CharField(blank=True, max_length=12, null=True),
        ),
    ]
