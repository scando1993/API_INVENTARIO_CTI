class CreateLenders < ActiveRecord::Migration[5.0]
  def change
    create_table :lenders do |t|
      t.string :function
      t.boolean :active

      t.timestamps
    end
  end
end
