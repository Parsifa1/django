# Generated by Django 4.2.11 on 2024-04-06 10:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_uploadfile'),
    ]

    operations = [
        migrations.AddField(
            model_name='optionlog',
            name='status',
            field=models.BooleanField(default=True, verbose_name='状态'),
        ),
    ]
