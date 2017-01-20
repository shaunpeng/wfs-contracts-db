class AddColTerminals < ActiveRecord::Migration[5.0]
  def change
    change_column :terminals, :city_id, :integer
  end
end
