class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
