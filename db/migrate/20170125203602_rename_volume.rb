class RenameVolume < ActiveRecord::Migration[5.0]
  def change
    rename_column :lines, :volumn_variance, :volume_variance
    rename_column :lines, :volumn_grossnet, :volume_grossnet
  end
end
