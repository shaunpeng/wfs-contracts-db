class DeleteMarket < ActiveRecord::Migration[5.0]
  def change
    drop_table :markets
  end
end
