# Generated by Django 3.2 on 2021-10-20 18:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogapp', '0006_auto_20210822_2221'),
    ]

    operations = [
        migrations.CreateModel(
            name='LoaderSpectacle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('loader_name', models.CharField(max_length=228)),
            ],
        ),
    ]
