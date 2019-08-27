class Guide < ApplicationRecord
  belongs_to :user
  monetize :price_cents
  validates :title, presence: true, uniqueness: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
