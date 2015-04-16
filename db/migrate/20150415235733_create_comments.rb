class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :date
      t.string :body
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
