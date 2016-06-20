class Kit < ApplicationRecord

	has_many :items, :through => :kit_items

	has_many :kits, :through => :kit_components

	has_many :kit_components

  has_many :kit_items

	has_many :kit_comments, dependent: :destroy

	has_and_belongs_to_many :owners
	scope :title_kit, -> (titleID){ where title: titleID }
end
