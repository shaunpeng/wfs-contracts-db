class ProdCategory < ApplicationRecord
    has_many :products
    belongs_to :line, optional: true
end
