class RecreateCfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cfiles do |t|
      t.string :name
      t.string :document
      t.integer :contract_id

      t.timestamps
    end
  end
end
