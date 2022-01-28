from django.db import models


# Create your models here.
class MovieDetail(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    rating = models.CharField(max_length=10)
    release_date = models.CharField(max_length=32)
    duration = models.CharField(max_length=10)
    description = models.TextField()

    class Meta:
        db_table = 'imdbmovie'
