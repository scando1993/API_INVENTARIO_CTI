class CreateSalidas < ActiveRecord::Migration[5.0]
  def change
    create_table :salidas do |t|
      t.text :noActa

      t.timestamps
    end
  end
end
