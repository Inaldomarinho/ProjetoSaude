from rest_framework.serializers import ModelSerializer
from core.models import Exame

class ExameSerializer(ModelSerializer):
    class Meta:
        model = Exame
        fields = ('id', 'usuario', 'tipo', 'data')