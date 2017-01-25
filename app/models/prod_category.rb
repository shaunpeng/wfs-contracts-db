class ProdCategory < ApplicationRecord
    has_many :products, -> { order("products.name") }
    belongs_to :line, optional: true
    
    def usualproducts
        products.where short_list: 'Y'
    end
    
end
