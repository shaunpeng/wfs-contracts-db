class DeleteColsTerminals2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :terminals, :tcn
    remove_column :terminals, :city_abbr
    remove_column :terminals, :city_state
  end
end
