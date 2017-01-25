class AddProdcateProdLine < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :prod_category_id, :integer
    add_column :lines, :product_id, :integer
  end
end
