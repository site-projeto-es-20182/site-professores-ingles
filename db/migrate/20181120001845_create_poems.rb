class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :author
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
