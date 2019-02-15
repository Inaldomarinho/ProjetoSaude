from django.db import models
from django.contrib.auth.models import  User
from medico.models import Medico
from clinica.models import Clinica
# Create your models here.


class Exame(models.Model):
    exame = models.FileField()
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    medico = models.OneToOneField(Medico, blank= True, null = True, on_delete=models.SET_NULL)
    clinica = models.OneToOneField(Clinica, blank=True, null=True, on_delete=models.SET_NULL)
    data = models.DateTimeField(auto_now_add=True)
    tipo = models.CharField(max_length=50, blank=True)
    observacao  = models.TextField(blank=True)

    def __str__(self):
        return self.usuario.first_name

    class Meta:
        verbose_name = 'Exame'
        verbose_name_plural = 'Exames'
        ordering = ['data']