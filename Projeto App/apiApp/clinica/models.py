from django.db import models

# Create your models here.

class Clinica(models.Model):
    nome = models.CharField(max_length=60, blank= False)
    #cnpj
    endereco = models.CharField(max_length=60, blank= False)
    senha = models.CharField(max_length=10, blank= False)
    telefone = models.CharField(max_length=10, blank= False)
    aprovado = models.BooleanField(default=False)

    def __str__(self):
        return self.nome