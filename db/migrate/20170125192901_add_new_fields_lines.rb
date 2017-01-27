class AddNewFieldsLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :cancel_date, :date
    add_column :lines, :status, :string
    add_column :lines, :payment_terms, :string
    add_column :lines, :volume_variance, :string
    add_column :lines, :volume_grossnet, :string
    add_column :lines, :formula_description, :string
    add_column :lines, :formula_samepriorday, :string
    add_column :lines, :pct_ethanol, :integer
    add_column :lines, :index_1, :string
    add_column :lines, :adder_1, :decimal
    add_column :lines, :pct_index_1, :integer
    add_column :lines, :index_2, :string
    add_column :lines, :adder_2, :decimal
    add_column :lines, :pct_index_2, :integer
    add_column :lines, :index_3, :string
    add_column :lines, :adder_3, :decimal
    add_column :lines, :pct_index_3, :integer
    add_column :lines, :adder_inout, :string
    add_column :lines, :adder_schedule, :string
    add_column :lines, :pct_rins_discount, :integer
    add_column :lines, :index_rins, :string
    add_column :lines, :summer_rvp, :string
    add_column :lines, :rack_discount, :decimal
    add_column :lines, :rack_discount_policy, :text
    add_column :lines, :rebate_policy, :text
    add_column :lines, :penalty_policy, :text   
    add_column :lines, :short_list, :boolean
  end
end
