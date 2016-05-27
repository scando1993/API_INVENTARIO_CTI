from django.db import models
from django.utils.encoding import python_2_unicode_compatible
@python_2_unicode_compatible
class Kit(models.Model):
    codigo= models.CharField(max_length=10)
    tieneSerie= models.BooleanField(default=False)
    serie= models.CharField(max_length=20,null=True)
    nombre = models.CharField(max_length=20)
    descripcion = models.CharField(max_length=50,null=True)
    fechaCreacion= models.DateTimeField(null=True)
    fechaActualizacion= models.DateTimeField(null=True)

    def __str__(self):
        return self.nombre



@python_2_unicode_compatible
class Item(models.Model):
    codigo= models.CharField(max_length=10)
    tieneSerie= models.BooleanField(default=False)
    serie= models.CharField(max_length=20,null=True)
    nombre = models.CharField(max_length=20)
    descripcion = models.CharField(max_length=50,null=True)
    fechaCreacion= models.DateTimeField(null=True)
    fechaActualizacion= models.DateTimeField(null=True)
    kit = models.ForeignKey(Kit,on_delete=models.CASCADE, null=True)

    class Meta:
        ordering = ('nombre',)
    def __str__(self):
        return self.nombre


# Create your models here.
