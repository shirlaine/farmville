class TweetPost < ApplicationRecord

  belongs_to :campaign
  has_many :images, as: :imageable, dependent: :destroy

end
