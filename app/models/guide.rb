class Guide < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
                  :against => {
                    :location => 'A',
                    :category => 'B',
                    :title => 'C'
                  },
                  :associated_against => {
                    user: [:first_name, :last_name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  monetize :price_cents
  validates :title, presence: true, uniqueness: true
  validates :location, presence: true

  has_many :stops, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :stops, dependent: :destroy

end