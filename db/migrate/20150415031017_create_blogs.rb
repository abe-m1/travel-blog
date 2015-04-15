class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :date
      t.string :post

      t.timestamps null: false
    end
  end
end
