class TweetPost < ApplicationRecord

  has_many :images, as: :imageable

end
