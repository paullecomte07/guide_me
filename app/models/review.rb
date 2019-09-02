class Review < ApplicationRecord
  validates :content, length: { minimum: 10 }

  belongs_to :user
  belongs_to :guide
end
