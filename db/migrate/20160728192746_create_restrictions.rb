class CreateRestrictions < ActiveRecord::Migration[5.0]
  def change
    create_table :restrictions do |t|
      t.boolean :canRead
      t.boolean :canIngress
      t.boolean :canModify
      t.boolean :canEliminate
      t.boolean :canPrint

      t.timestamps
    end
  end
end
