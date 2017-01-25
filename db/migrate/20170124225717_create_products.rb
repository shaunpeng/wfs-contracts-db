class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :abbr
      t.integer :prod_category_id
      t.string :short_list

      t.timestamps
    end
  end
end
