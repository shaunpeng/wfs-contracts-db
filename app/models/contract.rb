class Contract < ApplicationRecord
    # validates :contract_nbr, presence: true
    validates :supplier, presence: true
    validates :sales_rep, presence: true
    validates :market_id, presence: true
    validates :brand_type, presence: true, allow_blank: false
    validates :start_date, presence: true
    # validates :end_date, presence: true
    validates :renew_type, presence: true
    validates :formula_type, presence: true
    validates :pricing_cycle, presence: true
    validate :end_after_start
    validate :end_if_not_evergreen
    has_many :lines
    has_one :cfile
    has_one :market
    
    def end_after_start
        if !end_date.nil?
            if end_date <= start_date
               errors.add(:base, 'End date must be after Start date')
            end
        end
    end
    
    def end_if_not_evergreen
        if renew_type != "Evergreen"
            if end_date.nil?
               errors.add(:base, 'End date cannot be blank if renewal cycle is not evergreen')
            end
        end
    end
    
end