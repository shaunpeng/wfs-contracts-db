class AddContractIdLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :contract_id, :integer
    add_column :lines, :volume, :integer
    add_column :lines, :formula, :string
  end
end
