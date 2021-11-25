from django.contrib import admin
from django import forms

from . import models

from django.utils.html import format_html
# old.. from django.core.urlresolvers import reverse
from django.urls import reverse

from django.http import HttpResponseRedirect
from django.template.response import TemplateResponse

# =================================================

from .models import Tagg,  Post, Nc2BfwTag, Nc2BfwNcM2MNc2BfwNoteNc2BfwTag, Nc2BfwNote

@admin.register(Tagg)
class TaggAdmin(admin.ModelAdmin):
    list_display = ('id', 'title')

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('id', 'created', 'last_updated', 'title', 'body')
    list_filter = ('created', 'last_updated')
    # raw_id_fields = ('taggs',)

# =================================================

# -*- coding: utf-8 -*-

# @admin.register(models.Nc2BfwTag)
class Nc2BfwTagAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'created_at', 'updated_at')
    list_filter = ('created_at', 'updated_at')
    date_hierarchy = 'created_at'
    search_fields = [
        "title",
    ]
admin.site.register(models.Nc2BfwTag, Nc2BfwTagAdmin)

# @admin.register(Nc2BfwNcM2MNc2BfwNoteNc2BfwTag)
# class Nc2BfwNcM2MNc2BfwNoteNc2BfwTagAdmin(admin.ModelAdmin):
#     list_display = ('nc_2bfw_tag_c', 'nc_2bfw_note_p')
#     list_filter = ('nc_2bfw_tag_c', 'nc_2bfw_note_p')

@admin.register(Nc2BfwNote)
class Nc2BfwNoteAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'created_at', 'updated_at', 'body')
    list_filter = ('created_at', 'updated_at')
    date_hierarchy = 'created_at'

# =================================================

# =================================================
