class Addcolumns < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :sales_rep, :string
    add_column :contracts, :supplier_nbr, :string
    add_column :contracts, :company, :string
    add_column :contracts, :company_nbr, :string
    add_column :contracts, :term_city, :string
    add_column :contracts, :start_date, :date
    add_column :contracts, :end_date, :date
    add_column :contracts, :renew_type, :string
    add_column :contracts, :notes, :text
    add_column :contracts, :formula_type, :string
    add_column :contracts, :pricing_cycle, :string
    add_column :contracts, :brand_type, :string
    rename_column :contracts, :contract_id, :contract_nbr
  end
end
