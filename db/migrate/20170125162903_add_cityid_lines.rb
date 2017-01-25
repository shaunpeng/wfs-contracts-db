class AddCityidLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :city_id, :integer
  end
end
