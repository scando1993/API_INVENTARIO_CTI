class CreateKitComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_components do |t|
      t.references :kit, foreign_key: true
      t.references :kitComponent, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
