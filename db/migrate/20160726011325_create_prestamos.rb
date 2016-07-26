class CreatePrestamos < ActiveRecord::Migration[5.0]
  def change
    create_table :prestamos do |t|
      t.date :fechaVencimiento
      t.date :fechaDevolucion

      t.timestamps
    end
  end
end
