class AddTableToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :description, :string
  end
end
