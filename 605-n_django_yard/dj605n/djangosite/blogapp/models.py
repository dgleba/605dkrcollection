from django.db import models
from django.urls import reverse

class Post(models.Model):

    # Fields
    created = models.DateTimeField(auto_now_add=True, editable=False)
    last_updated = models.DateTimeField(auto_now=True, editable=False)
    title = models.CharField(max_length=230)
    body = models.TextField(max_length=32100, default=None, blank=True, null=True)

    class Meta:
        pass

    def __str__(self):
        return str(self.pk)

    def get_absolute_url(self):
        return reverse("blogapp_Post_detail", args=(self.pk,))

    def get_update_url(self):
        return reverse("blogapp_Post_update", args=(self.pk,))



class Author(models.Model):
   name = models.CharField(max_length=100)

class Book(models.Model):
   author = models.ForeignKey(Author, on_delete=models.CASCADE)
   title = models.CharField(max_length=100)
   
#


# class Publication(models.Model):
#     title = models.CharField(max_length=30)

#     class Meta:
#         ordering = ['title']

#     def __str__(self):
#         return self.title

# class Article(models.Model):
#     headline = models.CharField(max_length=100)
#     publications = models.ManyToManyField(Publication)

#     class Meta:
#         ordering = ['headline']

#     def __str__(self):
#         return self.headline


#
# https://docs.djangoproject.com/en/3.2/ref/contrib/admin/#working-with-many-to-many-models


class Person(models.Model):
    name = models.CharField(max_length=128)

    def __str__(self):
        return  str(self.id) + "-" + self.name 


class Group(models.Model):
    name = models.CharField(max_length=128)
    members = models.ManyToManyField(Person, related_name='groups')

    def __str__(self):
        return  str(self.id) + "-" + self.name 


# testing two word model name.

class LoaderSpectacle(models.Model):
    loader_name = models.CharField(max_length=228)

    def __str__(self):
        return  str(self.id) + "-" + self.loader_name 
