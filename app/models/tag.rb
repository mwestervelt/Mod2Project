class Tag < ApplicationRecord
  has_many :resolution_tags
  has_many :resolutions, through: :resolution_tags
end
