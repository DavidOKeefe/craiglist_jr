class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
  end
end
