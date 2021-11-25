from django.contrib import admin
from django import forms

from . import models

from django.utils.html import format_html
# old.. from django.core.urlresolvers import reverse
from django.urls import reverse


from django.http import HttpResponseRedirect
from django.template.response import TemplateResponse

# from .forms import DepositForm, WithdrawForm


# =================================================
# =================================================



# first admin site



class PostAdminForm(forms.ModelForm):

    class Meta:
        model = models.Post
        fields = "__all__"


class PostAdmin(admin.ModelAdmin):
    # add_form_template = 'blogapp/admin/postadd.html'
    form = PostAdminForm
    list_display = [
        # "id",
        # "created",
        # "last_updated",
        "title",
        "body",
    ]

admin.site.register(models.Post, PostAdmin)





# -*- coding: utf-8 -*-

@admin.register(models.Nc2BfwCities)
class Nc2BfwCitiesAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'created_at', 'updated_at', 'number')
    list_filter = ('created_at', 'updated_at')
    date_hierarchy = 'created_at'
    search_fields = [
        "title",
    ]

@admin.register(models.Nc2BfwContacts)
class Nc2BfwContactsAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'title',
        'phone',
        'name',
        # 'picture',
        'country',
        # 'eml',
        # 'title21',
        'created_at',
        'updated_at',
    )
    list_filter = ('created_at', 'updated_at')
    search_fields = ('name',
           'title',
        # 'created_at',
        # 'updated_at',
        'phone',
        'name',
        'picture',
        'country',
         'eml',
         'title21',)
    date_hierarchy = 'created_at'
    autocomplete_fields  = [
        "cities"
    ]



# =================================================

class ApplicationAdmin(admin.ModelAdmin):
    autocomplete_fields  = [
        "vehicles"
    ]

class VehicleAdmin(admin.ModelAdmin):
    # ordering = ['date_created']
    search_fields = [
        "vehicle_maker",
        "vehicle_model",
    ]

admin.site.register(models.Vehicle, VehicleAdmin)
admin.site.register(models.Application, ApplicationAdmin)

# =================================================


# =================================================


# second admin site



class Admin2(admin.AdminSite):
    site_header = "App.bg2"
    site_title = "Blog-BG2"
    # https://books.agiliq.com/projects/django-admin-cookbook/en/latest/change_text.html
    # admin.site.site_header = "UMSRA Admin"
    # admin.site.site_title = "UMSRA Admin Portal"
    # admin.site.index_title = "Welcome to UMSRA Researcher Portal"
    
class PostAdmin2(admin.ModelAdmin):
    actions = None
    add_form_template = 'blogapp/admin/postadd.html'
    form = PostAdminForm
    list_display = [
        "title",
        "id",
        "created",
        "last_updated",
        "body",
    ]
    readonly_fields = [
        "id",
        "created",
        "last_updated",
        # "title",
        # "body",
    ]


admin2 = Admin2(name='admin2')
admin2.register(models.Post, PostAdmin2)
# This seems like it is not working.
admin2.index_title = "blog.bg2"


# =================================================

class Application2Admin(admin.ModelAdmin):
    ordering = ['-created_at']
    search_fields = [
        "source",
        "application",
        "pts_topology",
    ]
    actions = None

class Vehicle2Admin(admin.ModelAdmin):
    ordering = ['-id']
    autocomplete_fields  = [
        "application2s"
    ]

# admin.site.register(models.Vehicle2, Vehicle2Admin)
# admin.site.register(models.Application2, Application2Admin)

# place these on admin2
admin2.register(models.Vehicle2, Vehicle2Admin)
admin2.register(models.Application2, Application2Admin)


# =================================================

