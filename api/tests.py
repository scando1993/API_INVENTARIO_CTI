from django.test import TestCase
from .models import Item
class ItemTestCase(TestCase):
    def Create(self):
        Item.objects.create(codigo="001928374",tieneSerie=True,serie="098737465813",nombre="taladro",descripcion="objeto para perforar")


# Create your tests here.
