class CreateKitDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_detalles do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
