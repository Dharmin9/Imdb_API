from django.contrib import admin
from django.urls import path
from mdetail import views
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('admin/', admin.site.urls),
    # path('movieapi/', views.movie_detail),
    path('movieapi/', views.movie_detail.as_view()),
]
