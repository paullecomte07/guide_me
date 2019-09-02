class Itinerary < ApplicationRecord
  belongs_to :stop
  belongs_to :guide
end
