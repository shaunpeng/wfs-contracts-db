class Terminal < ApplicationRecord
      belongs_to :city
    def self.searchfield(terminal_id,field)
      if Terminal.where(:id => terminal_id).exists?
          Terminal.where(:id => terminal_id).pluck(field)[0]
      else
        ""
      end
    end
end
