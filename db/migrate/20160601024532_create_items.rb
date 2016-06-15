class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :code
      t.string :item_type
      t.string :state
      t.string :reference
      t.string :domain
      t.string :description
      t.string :mac
      t.string :serie
      t.integer :quantity
      t.float :value
      t.timestamps
    end
  end
end
