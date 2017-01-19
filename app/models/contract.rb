class Contract < ApplicationRecord
    validates :supplier, presence: true
    validates :product, presence: true
    has_many :lines
    
end
