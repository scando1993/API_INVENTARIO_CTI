class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :function
      t.string :phone
      t.string :gender
      t.string :cellphone
      t.string :institutional_email
      t.string :function

      t.timestamps
    end
  end
end
