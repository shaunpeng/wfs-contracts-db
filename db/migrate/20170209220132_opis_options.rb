class OpisOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :opis_grossnet, :string
    add_column :lines, :opis_index_point, :string
    add_column :lines, :opis_avglow, :string
  end
end
