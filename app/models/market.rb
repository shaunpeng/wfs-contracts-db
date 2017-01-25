class Market < ApplicationRecord
    belongs_to :contract, optional: true
    belongs_to :state, optional: true
    has_many :cities
    
    # def self.search(market_id)
    #   Market.where("id = ?", market_id)
    # end
    
end
