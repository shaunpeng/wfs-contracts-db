class ProdCategory < ApplicationRecord
    has_many :products, -> { order("products.name") }
    belongs_to :line, optional: true
end
