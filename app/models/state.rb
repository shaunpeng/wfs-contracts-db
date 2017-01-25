class State < ApplicationRecord
    has_many :cities, -> { order("cities.name") }
    has_many :markets, -> { order("markets.name") }
end
