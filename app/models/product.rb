class Product < ApplicationRecord
    belongs_to :prod_category
    belongs_to :line, optional: true
    
    def self.searchfield(product_id,field)
        if Product.where(:id => product_id).exists?
            Product.where(:id => product_id).pluck(field)[0]
        else
          ""
        end
    end
    
    def nameabbr
        "#{name}&nbsp;&nbsp;&nbsp;(#{abbr})".html_safe
    end
    
end
