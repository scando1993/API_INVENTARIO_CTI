class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.boolean :activo

      t.timestamps
    end
  end
end
