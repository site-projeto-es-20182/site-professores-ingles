class AddUserToMyClass < ActiveRecord::Migration[5.1]
  def change
    add_reference :my_classes, :user, foreign_key: true
  end
end
