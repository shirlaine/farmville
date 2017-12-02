class Image < ApplicationRecord

  belongs_to :imageable, polymorphic: true
  validates :file_location, presence: true

end
