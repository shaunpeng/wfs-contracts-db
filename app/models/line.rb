class Line < ApplicationRecord
  validates :contract_id, presence: true
  validates :prod_category_id, presence: true
  validates :city_id, presence: true
  validates :volume, presence: true
  validates :volume, :numericality => { :greater_than10 => 100 }
  validates :volume_grossnet, presence: true
  validates :formula, presence: true
  validate :sum_equals_100
  belongs_to :contract
  has_one :prod_category
  has_one :product
  
    def sum_equals_100
       if pct_index_1.to_i + pct_index_2.to_i + pct_index_3.to_i != 100
         errors.add(:base, 'Index percentages must sum up to 100')
       end
    end
  
end