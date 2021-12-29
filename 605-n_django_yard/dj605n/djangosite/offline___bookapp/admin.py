from django.contrib import admin

# Register your models here.

from django import forms

from . import models



class BookInline(admin.TabularInline):
    model = models.Book

class AuthorAdmin(admin.ModelAdmin):
    inlines = [
        BookInline,
    ]