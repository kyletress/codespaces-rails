class Sport < ApplicationRecord
    has_many :concepts
    validates :name, presence: true
end
