class Product < ApplicationRecord
    belongs_to :prod_category
    belongs_to :line, optional: true
end
