from django.test import TestCase
from .models import Item, Kit
class ItemTestCase(TestCase):
    def Create(self):
        Item.objects.create(codigo="001928374",tieneSerie=True,serie="098737465813",nombre="taladro",descripcion="objeto para perforar")

class KitTestCase(TestCase):
    def Create(self):
        Kit.objects.create(codigo="001928375",tieneSerie=True,serie="098737465814",nombre="arduinoX",descripcion="kit de arduino basico para trabajar")



# Create your tests here.
