class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.text :ci
      t.text :nombres
      t.text :apellidos
      t.text :correoElectronico
      t.text :telefono
      t.text :genero

      t.timestamps
    end
  end
end
