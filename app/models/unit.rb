class Unit < ApplicationRecord
    has_many :concepts
    validates :title, presence: true
    
    def title
    end
end
