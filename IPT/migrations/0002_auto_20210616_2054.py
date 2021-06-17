# Generated by Django 3.1 on 2021-06-16 15:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('IPT', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='buildings',
            name='accessibleToRoad',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.RESTRICT, to='IPT.roadaccessibilitystate'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='landdetails',
            name='accessibleToRoad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.roadaccessibilitystate'),
        ),
    ]
