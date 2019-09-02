class Review < ApplicationRecord
  validates :content, length: { minimum: 10 }

  belongs_to :user
  belongs_to :guide

  def self.ratings
    @ratings = Review.all.map do |review|
      review.stars
    end
  end
end
