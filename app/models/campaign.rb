class Campaign < ApplicationRecord

  belongs_to :category
  has_many :facebook_posts, dependent: :destroy
  has_many :tweet_posts, dependent: :destroy
  has_many :instagram_posts, dependent: :destroy

end
