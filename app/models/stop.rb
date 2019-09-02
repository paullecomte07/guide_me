class Stop < ApplicationRecord
  has_many :itineraries
  has_many :guides, through: :itineraries
end
