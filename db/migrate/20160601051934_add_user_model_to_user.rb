class AddUserModelToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_models, :user, foreign_key: true
  end
end
