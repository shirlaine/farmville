class FacebookPost < ApplicationRecord

  has_many :images, as: :imageable

end
