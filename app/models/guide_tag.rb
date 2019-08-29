class GuideTag < ApplicationRecord
  belongs_to :tag
  belongs_to :guide
end
