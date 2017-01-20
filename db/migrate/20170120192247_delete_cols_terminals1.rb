class DeleteColsTerminals < ActiveRecord::Migration[5.0]
  def change
    add_column :terminals, :city_id, :integer
  end
end
