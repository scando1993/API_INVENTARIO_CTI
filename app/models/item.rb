class Item < ApplicationRecord

	has_many :kits, :through => :kit_items
	has_many :items, :through => :item_components

	has_many :kit_items
	has_many :item_components

	has_and_belongs_to_many :owners

end
