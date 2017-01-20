class AddBackTcnTerminals < ActiveRecord::Migration[5.0]
  def change
    add_column :terminals, :tcn, :string
  end
end
