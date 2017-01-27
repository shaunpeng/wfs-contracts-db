class AddShortlistLine < ActiveRecord::Migration[5.0]
  def change
      add_column :lines, :short_list, :boolean
  end
end
