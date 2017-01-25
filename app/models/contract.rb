class Contract < ApplicationRecord
    validates :contract_nbr, presence: true
    validates :supplier, presence: true
    validates :sales_rep, presence: true
    validates :market_id, presence: true
    validates :brand_type, presence: true, allow_blank: false
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :renew_type, presence: true
    validates :formula_type, presence: true
    validates :pricing_cycle, presence: true
    has_many :lines
    has_one :cfile
    has_one :market
end