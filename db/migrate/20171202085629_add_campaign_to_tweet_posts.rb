class AddCampaignToTweetPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :tweet_posts, :campaign, foreign_key:true, index: true
  end
end
