class DeleteContractProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :product
  end
end
