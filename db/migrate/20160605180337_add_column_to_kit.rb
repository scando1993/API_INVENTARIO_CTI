class AddColumnToKit < ActiveRecord::Migration[5.0]
  def change
    add_column :kits, :serie, :string
  end
end
