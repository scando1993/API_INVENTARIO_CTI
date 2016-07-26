class CreateMovimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :movimientos do |t|
      t.integer :tipo_Movimiento
      t.date :fecha

      t.timestamps
    end
  end
end
