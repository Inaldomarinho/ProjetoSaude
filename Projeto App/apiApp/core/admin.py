from django.contrib import admin
from .models import Exame

# Register your models here.
class ExameAdmin(admin.ModelAdmin):
    list_display = ['usuario', 'data']
    search_fields = ['usuario', 'data']


admin.site.register(Exame, ExameAdmin)