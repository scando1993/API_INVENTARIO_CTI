class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.date :date

      t.timestamps
    end
  end
end
