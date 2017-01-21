class CreateCfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cfiles do |t|
      t.string :name
      t.string :document
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
