class AddUserToActivity < ActiveRecord::Migration[5.1]
  def change
    add_reference :activities, :user, foreign_key: true
  end
end
