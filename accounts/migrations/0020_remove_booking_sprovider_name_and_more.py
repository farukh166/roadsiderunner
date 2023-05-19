# Generated by Django 4.1.7 on 2023-04-14 19:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0019_booking_sprovider_name_booking_sprovider_phone_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='booking',
            name='sprovider_name',
        ),
        migrations.RemoveField(
            model_name='booking',
            name='sprovider_phone',
        ),
        migrations.AddField(
            model_name='booking',
            name='sprovider',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.SET_DEFAULT, to='accounts.serviceprovider'),
        ),
    ]
