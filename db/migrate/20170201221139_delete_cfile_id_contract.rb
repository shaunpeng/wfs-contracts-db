class DeleteCfileIdContract < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :cfile_id
  end
end
