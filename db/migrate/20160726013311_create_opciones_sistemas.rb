class CreateOpcionesSistemas < ActiveRecord::Migration[5.0]
  def change
    create_table :opciones_sistemas do |t|
      t.integer :id
      t.text :descripcion

      t.timestamps
    end
  end
end
