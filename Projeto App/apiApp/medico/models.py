from django.db import models

# Create your models here.

class Medico(models.Model):
    nome = models.CharField(max_length=60, blank= False)
    senha = models.CharField(max_length=10, blank= False)
    #cpf
    #cfm
    especialidade = models.CharField(max_length=30, blank= False)
    email= models.EmailField(blank= False)
    aprovado = models.BooleanField(default=False)

    def __str__(self):
        return self.nome