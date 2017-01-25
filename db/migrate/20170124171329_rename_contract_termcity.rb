class RenameContractTermcity < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :market_id, :integer
    remove_column :contracts, :terminal_city
    remove_column :contracts, :terminal_state
    remove_column :terminals, :rack_id
  end
end
