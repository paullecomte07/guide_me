class Wish < ApplicationRecord
  belongs_to :guide
  belongs_to :user
end
