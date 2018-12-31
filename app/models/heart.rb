class Heart < ApplicationRecord
  belongs_to :user
  belongs_to :resolution
end
