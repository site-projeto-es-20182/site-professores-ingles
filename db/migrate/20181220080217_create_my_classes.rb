class CreateMyClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :my_classes do |t|
      t.string :title

      t.timestamps
    end
  end
end
