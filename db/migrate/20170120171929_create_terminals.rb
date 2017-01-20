class CreateTerminals < ActiveRecord::Migration[5.0]
  def change
    create_table :terminals do |t|
      t.string :tcn
      t.string :city_abbr
      t.string :city
      t.string :city_state
      t.string :name
      t.string :abbr
      t.integer :rack_id

      t.timestamps
    end
  end
end
