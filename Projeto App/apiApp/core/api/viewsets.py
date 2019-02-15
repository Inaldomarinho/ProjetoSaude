from rest_framework.viewsets import ModelViewSet
from core.models import Exame
from .serializers import ExameSerializer

class ExameViewSet(ModelViewSet):
    queryset = Exame.objects.all()
    serializer_class = ExameSerializer