class CreateJoinTableKitItem < ActiveRecord::Migration[5.0]
  def change
    create_join_table :kits, :items do |t|
       t.index [:kit_id, :item_id]
      # t.index [:item_id, :kit_id]
    end
  end
end
