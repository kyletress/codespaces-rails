class Stat < ApplicationRecord
  belongs_to :athlete
  belongs_to :concept
  belongs_to :game
end
