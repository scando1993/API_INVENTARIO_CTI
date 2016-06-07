class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :title
      t.string :url
      t.string :reference
      t.string :version
      t.string :extension
      t.string :file
      t.string :purpose
      t.string :state
      t.string :domain

      t.timestamps
    end
  end
end
