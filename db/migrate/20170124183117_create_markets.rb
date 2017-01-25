class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.integer :padd
      t.string :market
      t.integer :state_id

      t.timestamps
    end
  end
end
