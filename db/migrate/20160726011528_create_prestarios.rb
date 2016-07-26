class CreatePrestarios < ActiveRecord::Migration[5.0]
  def change
    create_table :prestarios do |t|
      t.text :funcion
      t.boolean :activo

      t.timestamps
    end
  end
end
