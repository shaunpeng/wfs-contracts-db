class DeleteColsTerminals3 < ActiveRecord::Migration[5.0]
  def change
    remove_column :terminals, :city
  end
end
