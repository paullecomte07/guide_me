class Guide < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :location, presence: true
end
