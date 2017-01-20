class AddTerminalState < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :terminal_state, :string
  end
end
