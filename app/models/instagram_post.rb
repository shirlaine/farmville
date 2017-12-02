class InstagramPost < ApplicationRecord

  has_many :images, as: :imageable

end
