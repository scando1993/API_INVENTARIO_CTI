class CreateJoinTableOwnerItem < ActiveRecord::Migration[5.0]
  def change
    create_join_table :owners, :items do |t|
      t.index [:owner_id, :item_id]
      t.index [:item_id, :owner_id]
    end
  end
end
