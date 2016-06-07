class CreateUserHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_histories do |t|
      t.datetime :last_sign_in_at
      t.string :last_sign_in_ip

      t.timestamps
    end
  end
end
