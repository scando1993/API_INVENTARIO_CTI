class CreateMovementDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :movement_details do |t|
      t.integer :cantidad
      t.boolean :isDetail

      t.timestamps
    end
  end
end
