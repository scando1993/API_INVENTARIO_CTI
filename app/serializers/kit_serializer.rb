class KitSerializer < ActiveModel::Serializer
  attributes :id, :title,:number_elements,:code,:kit_type,:state,:reference,:domain,:serie

  has_many :items, :through => :kit_items, source: :item

  has_many :kits, :through => :kit_components, source: :kit_component

  has_many :kit_components

  has_many :kit_items

  has_many :kit_comments, dependent: :destroy

  has_many :owners
end
