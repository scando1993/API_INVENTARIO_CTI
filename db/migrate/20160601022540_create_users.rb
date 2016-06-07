class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :function
      t.string :phone
      t.string :gender
      t.string :cellphone

      t.timestamps
    end
  end
end
