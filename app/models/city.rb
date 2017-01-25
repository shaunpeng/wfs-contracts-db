class City < ApplicationRecord
    belongs_to :state
    belongs_to :market
    has_many :terminals
    
    def self.search(market_id)
      City.where("market_id = ?", market_id)
    end
    
end
