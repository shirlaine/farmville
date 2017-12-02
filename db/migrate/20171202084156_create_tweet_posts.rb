class CreateTweetPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :tweet_posts do |t|
      t.string :title, null: false
      t.text :description
      t.string :url
      t.datetime :end_time
      t.boolean :completed?, default: false
      t.integer :reach, default: 0
      t.integer :engagement, default: 0
      t.integer :impressions, default: 0
      t.integer :total_engagements, default: 0
      t.integer :media_engagements, default: 0
      t.integer :detail_expands, default: 0
      t.integer :retweets, default: 0
      t.integer :likes, default: 0
      t.integer :link_clicks, default: 0
      t.integer :profile_clicks, default: 0
      t.integer :replies, default: 0
      t.integer :follows, default: 0
      t.timestamps
    end
  end
end
