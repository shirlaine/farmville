class CreateInstagramPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :instagram_posts do |t|
      t.string :title, null: false
      t.text :description
      t.string :url
      t.string :end_time
      t.boolean :completed?, default: false
      t.integer :likes, default: 0
      t.integer :comments, default: 0
      t.references :campaign, foreign_key: true,  index: true
      t.timestamps
    end
  end
end
