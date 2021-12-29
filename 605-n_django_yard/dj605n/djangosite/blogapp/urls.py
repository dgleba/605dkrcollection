from django.urls import path, include
from rest_framework import routers

from . import api
from . import views


router = routers.DefaultRouter()
router.register("Post", api.PostViewSet)

urlpatterns = (
    path("api/v1/", include(router.urls)),
    path("blogapp/Post/", views.PostListView.as_view(), name="blogapp_Post_list"),
    path("blogapp/Post/create/", views.PostCreateView.as_view(), name="blogapp_Post_create"),
    path("blogapp/Post/detail/<int:pk>/", views.PostDetailView.as_view(), name="blogapp_Post_detail"),
    path("blogapp/Post/update/<int:pk>/", views.PostUpdateView.as_view(), name="blogapp_Post_update"),
    path('hello/', views.HelloView.as_view(), name='hello'),
)
