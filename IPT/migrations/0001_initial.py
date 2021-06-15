# Generated by Django 3.1 on 2021-06-15 16:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BuildingType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(max_length=50)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='BuildingUsage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('usage', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='FineReward',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_from', models.DateField()),
                ('date_to', models.DateField()),
                ('type', models.CharField(max_length=10)),
                ('rate', models.FloatField()),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='LandUnits',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('unit', models.CharField(max_length=20)),
                ('area_per_unit', models.CharField(max_length=50)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='LandUsage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('usage', models.CharField(max_length=500)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Occupation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('occupation', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Relation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('relation', models.CharField(max_length=50)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='RoadAccessibilityState',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('road_type', models.CharField(max_length=50)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Sectors',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('areaName', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='PersonalInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullname', models.CharField(max_length=100)),
                ('address', models.CharField(max_length=200)),
                ('contact', models.CharField(max_length=200)),
                ('occ', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.occupation')),
            ],
        ),
        migrations.CreateModel(
            name='LandTaxes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tax_amount', models.FloatField()),
                ('is_active', models.BooleanField(default=True)),
                ('road_access', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.roadaccessibilitystate')),
                ('sector', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.sectors')),
            ],
        ),
        migrations.CreateModel(
            name='LandDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kitta', models.CharField(max_length=20)),
                ('area', models.FloatField()),
                ('accessibleToRoad', models.BooleanField(default=False)),
                ('pricePerUnit', models.IntegerField()),
                ('property_value', models.IntegerField()),
                ('is_active', models.BooleanField(default=True)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.personalinfo')),
                ('unit', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.landunits')),
                ('usage', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.landusage')),
            ],
        ),
        migrations.CreateModel(
            name='InfrastructureTaxes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tax_amount', models.FloatField()),
                ('is_active', models.BooleanField(default=True)),
                ('building_type', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.buildingtype')),
                ('building_usage', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.buildingusage')),
                ('road_access', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.roadaccessibilitystate')),
                ('sector', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.sectors')),
            ],
        ),
        migrations.CreateModel(
            name='FamilyMembers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullName', models.CharField(max_length=100)),
                ('Occupation', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.occupation')),
                ('familyHead', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.personalinfo')),
                ('relation', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.relation')),
            ],
        ),
        migrations.CreateModel(
            name='Deprication',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rate', models.FloatField()),
                ('is_active', models.BooleanField(default=True)),
                ('type', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.buildingtype')),
            ],
        ),
        migrations.CreateModel(
            name='Buildings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('made_year', models.DateField()),
                ('occupiedArea', models.FloatField()),
                ('stories', models.IntegerField()),
                ('price', models.IntegerField()),
                ('is_active', models.BooleanField(default=True)),
                ('buildingType', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.buildingtype')),
                ('buildingUsage', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.buildingusage')),
                ('landRef', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.landdetails')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='IPT.personalinfo')),
            ],
        ),
    ]
