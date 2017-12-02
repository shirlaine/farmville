class InstagramPost < ApplicationRecord

  belongs_to :campaign
  has_many :images, as: :imageable, dependent: :destroy

  validates :title, presence: true

end
