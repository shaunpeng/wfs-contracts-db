class AddFileToContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :cfile_id, :integer
  end
end
