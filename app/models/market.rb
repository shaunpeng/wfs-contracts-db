class Market < ApplicationRecord
    belongs_to :contract, optional: true
    belongs_to :state, optional: true
    has_many :cities
end
