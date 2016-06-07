class UserModel < ApplicationRecord
	belongs_to :user
	has_many :user_histories

end
