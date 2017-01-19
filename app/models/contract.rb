class Contract < ApplicationRecord
    validates :product, presence: true
    has_many :lines
    
end
