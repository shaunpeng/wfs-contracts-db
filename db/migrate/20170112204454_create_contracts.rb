class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.integer :contract_id
      t.string :supplier
      t.string :product

      t.timestamps
    end
  end
end
