from django.contrib import admin
from django import forms

from . import models


class PostAdminForm(forms.ModelForm):

    class Meta:
        model = models.Post
        fields = "__all__"


class PostAdmin(admin.ModelAdmin):
    form = PostAdminForm
    list_display = [
        "created",
        "last_updated",
        "title",
        "body",
    ]
    readonly_fields = [
        "created",
        "last_updated",
        "title",
        "body",
    ]

admin.site.register(models.Post, PostAdmin)


#

class BookInline(admin.TabularInline):
    model = models.Book

class AuthorAdmin(admin.ModelAdmin):
    inlines = [
        BookInline,
    ]

admin.site.register(models.Book)
admin.site.register( models.Author, AuthorAdmin)

#


# class ArticleInline(admin.TabularInline):
#     model = models.Article

# class PublicationAdmin(admin.ModelAdmin):
#     inlines = [
#         ArticleInline,
#     ]

# admin.site.register(models.Article)
# admin.site.register( models.Publication, PublicationAdmin)

#

class MembershipInline(admin.TabularInline):
    model = models.Group.members.through

class PersonAdmin(admin.ModelAdmin):
    inlines = [
        MembershipInline,
    ]

class GroupAdmin(admin.ModelAdmin):
    inlines = [
        MembershipInline,
    ]
    exclude = ('members',)

admin.site.register(models.Person)
admin.site.register( models.Group, GroupAdmin)


# =================================================



# class LoaderSpectacleAdmin(admin.ModelAdmin):

admin.site.register( models.LoaderSpectacle)
