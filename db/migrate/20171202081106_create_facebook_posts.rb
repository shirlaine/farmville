class CreateFacebookPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :facebook_posts do |t|
      t.string :title, null: false
      t.integer :medium
      t.string :description
      t.string :url
      t.string :access_token
      t.string :url_postid
      t.datetime :end_time
      t.boolean :completed?, default: false
      t.integer :people_reached, default: 0
      t.integer :impressions, default: 0
      t.integer :stories, default: 0
      t.integer :like, default: 0
      t.integer :love, default: 0
      t.integer :haha, default: 0
      t.integer :wow, default: 0
      t.integer :sad, default: 0
      t.integer :angry, default: 0
      t.integer :comments, default: 0
      t.integer :shares, default: 0
      t.integer :post_clicks, default: 0
      t.integer :link_clicks, default: 0
      t.integer :other_clicks, default: 0
      t.references :campaign, foreign_key: true,  index: true
      t.timestamps
    end
  end
end
