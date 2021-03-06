# Generated by Django 3.1 on 2021-06-15 16:16

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Bill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('billNo', models.IntegerField()),
                ('billNoNp', models.CharField(max_length=10)),
                ('transactionDate', models.DateField(auto_now=True)),
                ('transactionDateNp', models.CharField(max_length=20)),
                ('clientName', models.CharField(max_length=200)),
                ('address', models.CharField(max_length=200)),
                ('contact', models.CharField(max_length=11)),
                ('totalAmount', models.IntegerField()),
                ('totalAmountNp', models.CharField(max_length=5)),
                ('totalAmountInLetters', models.CharField(max_length=100)),
                ('complete', models.BooleanField(default=False)),
                ('token', models.CharField(max_length=150)),
                ('isActive', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Designation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('designation', models.CharField(max_length=100)),
                ('designation_en', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='FY',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fy', models.CharField(max_length=30)),
                ('fy_np', models.CharField(max_length=30)),
                ('isactive', models.BooleanField(default=True)),
            ],
            options={
                'unique_together': {('fy', 'fy_np', 'isactive')},
            },
        ),
        migrations.CreateModel(
            name='Guide',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('setupName', models.CharField(max_length=100)),
                ('path', models.CharField(max_length=150)),
                ('is_complete', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='Office',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('officeName', models.CharField(max_length=200)),
                ('officeAddress', models.CharField(max_length=100)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='PaymentMethod',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('method', models.CharField(max_length=100)),
                ('paymentId', models.CharField(max_length=200)),
                ('isactive', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='ServiceMeta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ref_no', models.CharField(max_length=10)),
                ('servicecategory', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='SetupGuide',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('setupName', models.CharField(max_length=100)),
                ('path', models.CharField(max_length=150)),
                ('is_complete', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('serviceSub_ref', models.CharField(max_length=20)),
                ('serviceName', models.CharField(max_length=300)),
                ('serviceCharge', models.IntegerField()),
                ('serviceChargeNp', models.CharField(max_length=5)),
                ('isActive', models.BooleanField(default=True)),
                ('meta_ref', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.servicemeta')),
            ],
        ),
        migrations.CreateModel(
            name='relmap',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('offRef', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.office')),
                ('uRef', models.OneToOneField(on_delete=django.db.models.deletion.RESTRICT, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('desc', models.TextField(blank=True, max_length=500)),
                ('sanketNo', models.CharField(blank=True, max_length=30)),
                ('contactNo', models.CharField(blank=True, max_length=13)),
                ('manual_disable', models.BooleanField(default=False)),
                ('first_time', models.BooleanField(default=True)),
                ('guide_complete', models.BooleanField(default=False)),
                ('is_active', models.BooleanField(default=False)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Estimated',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('metawise', models.IntegerField()),
                ('servicewise', models.IntegerField()),
                ('fyref', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.fy')),
                ('meta_ref', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.servicemeta')),
                ('service_ref', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.service')),
            ],
        ),
        migrations.CreateModel(
            name='Cancelled',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Remarks', models.TextField()),
                ('date_cancelled', models.DateTimeField(auto_now=True)),
                ('rasidRef', models.OneToOneField(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.bill')),
            ],
        ),
        migrations.AddField(
            model_name='bill',
            name='fyRef',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.fy'),
        ),
        migrations.AddField(
            model_name='bill',
            name='meta_ref',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.servicemeta'),
        ),
        migrations.AddField(
            model_name='bill',
            name='org_ref',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.office'),
        ),
        migrations.AddField(
            model_name='bill',
            name='payment_method',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.paymentmethod'),
        ),
        migrations.AddField(
            model_name='bill',
            name='serviceRef',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.service'),
        ),
        migrations.AddField(
            model_name='bill',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='RasidAllocation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lowerRasid', models.IntegerField()),
                ('upperRasid', models.IntegerField()),
                ('currentRasid', models.IntegerField()),
                ('isActive', models.BooleanField(default=True)),
                ('fyRef', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.fy')),
                ('officeRef', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='revmgtmt.office')),
            ],
            options={
                'unique_together': {('fyRef', 'lowerRasid', 'upperRasid')},
            },
        ),
        migrations.AlterUniqueTogether(
            name='bill',
            unique_together={('fyRef', 'billNo')},
        ),
    ]
