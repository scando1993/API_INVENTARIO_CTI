class KitComponent < ApplicationRecord
  belongs_to :kit, dependent: :delete
  belongs_to :kitComponent, class_name: 'Kit', dependent: :delete
end
