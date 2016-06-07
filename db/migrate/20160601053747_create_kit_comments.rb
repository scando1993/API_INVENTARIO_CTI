class CreateKitComments < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_comments do |t|
      t.string :comments
      t.references :kit, foreign_key: true

      t.timestamps
    end
  end
end
