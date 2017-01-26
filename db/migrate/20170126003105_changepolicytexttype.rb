class Changepolicytexttype < ActiveRecord::Migration[5.0]
  def change
    change_column :lines, :rack_discount_policy, :text
    change_column :lines, :rebate_policy, :text
    change_column :lines, :penalty_policy, :text    
  end
end
