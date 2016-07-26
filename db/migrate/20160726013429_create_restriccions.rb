class CreateRestriccions < ActiveRecord::Migration[5.0]
  def change
    create_table :restriccions do |t|
      t.boolean :puede_Leer
      t.boolean :puede_Ingresar
      t.boolean :puede_Modificar
      t.boolean :puede_Imprimir

      t.timestamps
    end
  end
end
