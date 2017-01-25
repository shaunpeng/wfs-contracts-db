class AddMarket < ActiveRecord::Migration[5.0]
  def change
    add_column :market, :name, :string
    add_column :market, :padd, :integer
    add_column :market, :market, :string
    add_column :market, :state_id, :integer
  end
end
