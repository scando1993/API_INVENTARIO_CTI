class CreateMovimientoDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :movimiento_detalles do |t|
      t.integer :cantidad
      t.boolean :es_Detalle_Kit

      t.timestamps
    end
  end
end
