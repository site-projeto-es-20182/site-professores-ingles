class AddUserToPoem < ActiveRecord::Migration[5.1]
  def change
    add_reference :poems, :user, foreign_key: true
  end
end
