class Athlete < ApplicationRecord
    has_many :rosters
    has_many :teams, through: :rosters
    has_many :stats
end
