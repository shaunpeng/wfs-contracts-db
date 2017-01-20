require 'csv'

puts "Importing suppliers..."
CSV.foreach(Rails.root.join("suppliers.csv"), headers: true) do |row|
  Supplier.create! do |supplier|
    supplier.name = row[0]
  end
end