class ItemComponent < ApplicationRecord
  belongs_to :item
  belongs_to :item_component, class_name: "Item"
end
