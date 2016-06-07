class Item < ApplicationRecord
	has_and_belongs_to_many :kit
	has_and_belongs_to_many :owners

end
