class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :content
      t.timestamps
    end
    add_index :blogs, :user_id
    add_index :blogs, :category_id
  end
end
