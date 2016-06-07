class CreateUserModels < ActiveRecord::Migration[5.0]
  def change
    create_table :user_models do |t|
      t.string :institutional_email
      t.string :function
      t.integer :sign_in_count
      t.boolean :remember_me_token
      t.string :current_sign_in_ip
      t.datetime :current_sign_in_at
      t.boolean :reset_password_token
      t.datetime :reset_password_at

      t.timestamps
    end
  end
end
