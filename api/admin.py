from django.contrib import admin

from .models import Item,Kit,Prestamo,User

admin.site.register(Item)
admin.site.register(Kit)
admin.site.register(Prestamo)

# Register your models here.
