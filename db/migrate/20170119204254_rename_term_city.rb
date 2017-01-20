class RenameTermCity < ActiveRecord::Migration[5.0]
  def change
    rename_column :contracts, :term_city, :terminal_city
  end
end
