# Generated by Django 2.1.4 on 2018-12-17 15:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0008_auto_20181217_1506'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='exame',
            options={'ordering': ['data'], 'verbose_name': 'Exame', 'verbose_name_plural': 'Exames'},
        ),
    ]
