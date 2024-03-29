# Generated by Django 3.2 on 2021-11-26 14:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogapp', '0007_auto_20211124_2102'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tagb',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=45, null=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='group',
            name='members',
        ),
        migrations.RemoveField(
            model_name='vehicle2',
            name='Application2s',
        ),
        migrations.DeleteModel(
            name='Application',
        ),
        migrations.DeleteModel(
            name='Application2',
        ),
        migrations.DeleteModel(
            name='Group',
        ),
        migrations.DeleteModel(
            name='Person',
        ),
        migrations.DeleteModel(
            name='Vehicle',
        ),
        migrations.DeleteModel(
            name='Vehicle2',
        ),
        migrations.AddField(
            model_name='post',
            name='tagbs',
            field=models.ManyToManyField(to='blogapp.Tagb'),
        ),
    ]
