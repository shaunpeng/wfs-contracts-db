require 'csv'

# puts "Importing terminals..."
# CSV.foreach(Rails.root.join("terminals.csv"), headers: true) do |row|
#   Terminal.create! do |terminal|
#     terminal.id = row[0]
#     terminal.tcn = row[1]
#     terminal.name = row[2]
#     terminal.abbr = row[3]
#     terminal.city_id = row[5]
#   end
# end

# puts "Importing states..."
# CSV.foreach(Rails.root.join("states.csv"), headers: true) do |row|
#   State.create! do |state|
#     state.id = row[0]
#     state.name = row[1]
#     state.abbr = row[2]
#     state.country = row[3]
#   end
# end

# puts "Importing markets..."
# CSV.foreach(Rails.root.join("markets.csv"), headers: true) do |row|
#   Market.create! do |market|
#     market.id = row[0]
#     market.name = row[1]
#     market.padd = row[2]
#     market.market = row[3]
#     market.state_id = row[4]
#   end
# end

# puts "Importing cities..."
# CSV.foreach(Rails.root.join("cities.csv"), headers: true) do |row|
#   City.create! do |city|
#     city.id = row[0]
#     city.abbr = row[1]
#     city.name = row[2]
#     city.state_id = row[3]
#     city.market_id = row[4]
#   end
# end

# puts "Importing suppliers..."
# CSV.foreach(Rails.root.join("suppliers.csv"), headers: true) do |row|
#   Supplier.create! do |supplier|
#     supplier.name = row[0]
#   end
# end

# puts "Importing Product Categories..."
# CSV.foreach(Rails.root.join("prod_categories.csv"), headers: true) do |row|
#   ProdCategory.create! do |prod_category|
#     prod_category.id = row[0]
#     prod_category.name = row[1]
#   end
# end

# puts "Importing Products..."
# CSV.foreach(Rails.root.join("products.csv"), headers: true) do |row|
#   Product.create! do |product|
#     product.id = row[0]
#     product.abbr = row[2]
#     product.name = row[1]
#     product.prod_category_id = row[3]
#     product.short_list = row[4]
#   end
# end