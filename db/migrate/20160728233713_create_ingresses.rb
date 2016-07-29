class CreateIngresses < ActiveRecord::Migration[5.0]
  def change
    create_table :ingresses do |t|
      t.date :invoiceDate

      t.timestamps
    end
  end
end
