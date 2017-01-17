class Line < ApplicationRecord
  belongs_to :contract, optional: true
  validates :contract_id, presence: true
end