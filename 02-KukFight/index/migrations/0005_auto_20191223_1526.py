# Generated by Django 3.0.1 on 2019-12-23 08:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('index', '0004_auto_20191223_1315'),
    ]

    operations = [
        migrations.AlterField(
            model_name='attendance',
            name='meeting',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='meeting', to='index.Meeting'),
        ),
    ]
