class Game < ApplicationRecord
    has_many :lineups
    has_many :teams, through: :lineups
    has_many :stats
end
