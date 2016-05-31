from django.contrib.auth.models import User, Group
from .models import Item, Kit, Prestamo
from rest_framework import serializers


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('url', 'username', 'email', 'groups')


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ('url', 'name')

class KitSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Kit
        fields = '__all__'


class ItemSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Item
        fields = '__all__'

class PrestamoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Prestamo
        fields = '__all__'
