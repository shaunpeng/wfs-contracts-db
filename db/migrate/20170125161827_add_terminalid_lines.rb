class AddTerminalidLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :terminal_id, :integer
  end
end
