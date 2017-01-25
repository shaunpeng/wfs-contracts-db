class RenamePenalty < ActiveRecord::Migration[5.0]
  def change
    rename_column :lines, :penaly_policy, :penalty_policy
  end
end
