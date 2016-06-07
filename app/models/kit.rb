class Kit < ApplicationRecord

	has_and_belongs_to_many :items

	has_many :kit_comments, :dependent => :destroy
	has_and_belongs_to_many :owners

end
