class AddUsersLinesContractsFiles < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :created_by, :integer
    add_column :contracts, :updated_by, :integer
    add_column :lines, :created_by, :integer
    add_column :lines, :updated_by, :integer
  end
end
