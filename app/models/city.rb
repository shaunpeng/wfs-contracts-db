class City < ApplicationRecord
    belongs_to :state
    belongs_to :market
    has_many :terminals
end
