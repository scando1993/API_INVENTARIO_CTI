class ItemSerializer < ActiveModel::Serializer
  attributes :id,:title,:code,:type,:state,:reference,:domain,:characteristic

  has_many :kits, :through => :kit_items
  has_many :items, :through => :item_components

  has_many :kit_items
  has_many :item_components

  has_and_belongs_to_many :owners
end
