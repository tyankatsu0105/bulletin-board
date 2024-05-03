class AddColumnPosts < ActiveRecord::Migration[7.1]
  def up
    add_column :posts, :category, :integer, null: false, default: 1
  end

  def down
    remove_column :posts, :category
  end
end
