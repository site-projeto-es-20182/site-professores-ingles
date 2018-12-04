class CreateDoubts < ActiveRecord::Migration[5.1]
  def change
    create_table :doubts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
