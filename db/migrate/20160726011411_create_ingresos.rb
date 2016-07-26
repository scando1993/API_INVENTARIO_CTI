class CreateIngresos < ActiveRecord::Migration[5.0]
  def change
    create_table :ingresos do |t|
      t.text :noFactura

      t.timestamps
    end
  end
end
