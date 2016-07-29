class CreateItemIdentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :item_identifications do |t|
      t.decimal :value

      t.timestamps
    end
  end
end
