class Guide < ApplicationRecord
  belongs_to :user
  monetize :price_cents
  validates :title, presence: true, uniqueness: true
  validates :location, presence: true

end
