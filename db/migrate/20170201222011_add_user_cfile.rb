class AddUserCfile < ActiveRecord::Migration[5.0]
  def change
    add_column :cfiles, :created_by, :integer
    add_column :cfiles, :updated_by, :integer
  end
end
