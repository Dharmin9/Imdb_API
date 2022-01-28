# from django.http import HttpResponse
# from django.shortcuts import get_object_or_404
# from rest_framework.renderers import JSONRenderer
# from rest_framework.views import APIView
# from rest_framework.response import Response
# from rest_framework import status
# from .models import MovieDetail
# from .serializers import MovieSerializer
#
#
# def movie_detail(request):
#     resultdisplay = MovieDetail.objects.get(id=3)
#     serializer = MovieSerializer(resultdisplay)
#     json_data = JSONRenderer().render(serializer.data)
#     print('dharmin', resultdisplay)
#     return HttpResponse(json_data, content_type='application/json')

# from django.shortcuts import render
# import io
# from .serializers import MovieSerializer
# from rest_framework.renderers import JSONRenderer
# from rest_framework.parsers import JSONParser
# from django.http import HttpResponse
# from mdetail.models import MovieDetail
#
#
# def movie_detail(request):
#     if request.method == 'GET':
#         json_data = request.body
#     stream = io.BytesIO(json_data)
#     pythondata = JSONParser().parse(stream)
#     id = pythondata.get('id', None)
#     if id is not None:
#         stu = MovieDetail.objects.get(id=id)
#         serializer = MovieSerializer(stu)
#         json_data = JSONRenderer().render(serializer.data)
#         return HttpResponse(json_data, content_type='application/json')
#
#     stu = MovieDetail.objects.all()
#     serializer = MovieSerializer(stu, many=True)
#     json_data = JSONRenderer().render(serializer.data)
#     return HttpResponse(json_data, content_type='application/json')

from django.shortcuts import render

from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.renderers import JSONRenderer
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import MovieDetail
from .serializers import MovieSerializer
from rest_framework.generics import ListAPIView
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters


class movie_detail(ListAPIView):
    queryset = MovieDetail.objects.all()
    serializer_class = MovieSerializer
    filterset_fields = ['id', 'name', 'rating', 'release_date', 'duration', 'description']
    # def get(self, request):
    #     mov1 = MovieDetail.objects.all()
    #     print("dharmin", mov1)
    #     serializer = MovieSerializer(mov1, many=True)
    #     # filter_backends = (DjangoFilterBackend,)
    #     # filterset_fields = ['duration']
    #     return Response(serializer.data)

#
# def post(self):
#     pass
