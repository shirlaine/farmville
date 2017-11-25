class Farm < ApplicationRecord

  belongs_to :user
  belongs_to :location
  has_many :animals

end
