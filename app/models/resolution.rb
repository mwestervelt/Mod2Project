class Resolution < ApplicationRecord
  validates_uniqueness_of :title
  has_many :hearts, dependent: :destroy
  has_many :users, through: :hearts, dependent: :destroy

  has_many :resolution_tags, dependent: :destroy
  has_many :tags, through: :resolution_tags, dependent: :destroy
end
