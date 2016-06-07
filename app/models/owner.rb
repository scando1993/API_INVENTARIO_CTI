class Owner < ApplicationRecord
	has_and_belongs_to_many :kits
	has_and_belongs_to_many :items
end
