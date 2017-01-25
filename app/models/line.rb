class Line < ApplicationRecord
  validates :contract_id, presence: true
  validates :prod_category_id, presence: true
  belongs_to :contract
  has_one :prod_category
  has_one :product
end