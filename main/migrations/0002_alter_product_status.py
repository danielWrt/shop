# Generated by Django 4.1.3 on 2022-12-12 04:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='status',
            field=models.CharField(choices=[('есть в наличии', 'in stock'), ('нет в наличии', 'out of stock'), ('ожидается', 'pending')], max_length=15),
        ),
    ]
