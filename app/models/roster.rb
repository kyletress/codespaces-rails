class Roster < ApplicationRecord
  belongs_to :athlete
  belongs_to :team
end
