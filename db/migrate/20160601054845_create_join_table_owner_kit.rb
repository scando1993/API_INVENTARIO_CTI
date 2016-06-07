class CreateJoinTableOwnerKit < ActiveRecord::Migration[5.0]
  def change
    create_join_table :owners, :kits do |t|
       t.index [:owner_id, :kit_id]
      # t.index [:kit_id, :owner_id]
    end
  end
end
