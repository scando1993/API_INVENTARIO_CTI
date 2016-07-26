class CreateItemIdentificacions < ActiveRecord::Migration[5.0]
  def change
    create_table :item_identificacions do |t|
      t.text :valor

      t.timestamps
    end
  end
end
