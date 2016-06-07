class AddItemRefToKit < ActiveRecord::Migration[5.0]
  def change
    add_reference :kits, :item, foreign_key: true
  end
end
