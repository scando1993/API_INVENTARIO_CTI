class CreateKitItems < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_items do |t|
      t.references :kit, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
