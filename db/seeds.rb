# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

%w(mouse headset keyboard monitor pen bottle).each do
  Item.create!(name: _1, price: (10..50).to_a.sample)
end

%w(Alice Bob Charlie Daniel Emma Fernando Gabriel).each do
  Customer.create!(name: _1, birth_date: (18..33).to_a.sample.years.ago)
end
