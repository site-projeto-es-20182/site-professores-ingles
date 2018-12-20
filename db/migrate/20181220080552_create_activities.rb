class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.references :activable, polymorphic: true
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
