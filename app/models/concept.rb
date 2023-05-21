class Concept < ApplicationRecord
  belongs_to :unit
  belongs_to :sport
  validates :name, presence: true
  has_many :stats
end
