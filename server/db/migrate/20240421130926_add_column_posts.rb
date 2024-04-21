class AddColumnPosts < ActiveRecord::Migration[7.1]
  def up
    add_column :posts, :category, :integer, null: false
  end

  def down
    remove_column :posts, :category
  end
end
