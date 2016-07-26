class CreateMovimientoDetalleIds < ActiveRecord::Migration[5.0]
  def change
    create_table :movimiento_detalle_ids do |t|

      t.timestamps
    end
  end
end
