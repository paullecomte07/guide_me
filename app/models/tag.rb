class Tag < ApplicationRecord
  has_many :guide_tags, dependent: :destroy
end
