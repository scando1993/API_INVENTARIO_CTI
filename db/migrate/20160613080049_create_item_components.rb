class CreateItemComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :item_components do |t|
      t.references :item, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
