class CreateKits < ActiveRecord::Migration[5.0]
  def change
    create_table :kits do |t|
      t.string :title
      t.integer :number_elements

      t.string :code
      t.string :kit_type
      t.string :state
      t.string :reference
      t.string :domain
      t.string :purpose

      t.string :comments

      t.timestamps
    end
  end
end
