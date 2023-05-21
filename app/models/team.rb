class Team < ApplicationRecord
  belongs_to :sport
  has_many :rosters
  has_many :athletes, through: :rosters
  has_many :lineups
  has_many :games, through: :lineups

end
