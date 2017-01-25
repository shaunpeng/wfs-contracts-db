class AddMarketIdCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :market_id, :integer
  end
end
