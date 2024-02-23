# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "clear BD"
Restaurant.destroy_all

puts "Creating restaurants"
restaurants_data = [
  { name: "Epicure", address: "123 Main St", phone_number: "555-1234", category: "french" },
  { name: "MamaBella", address: "123 Caracas", phone_number: "666-25252", category: "italian" },
  { name: "Coco", address: "58- petare", phone_number: "123-5858-9675", category: "japanese" },
  { name: "kfc", address: "La california", phone_number: "63535-1234", category: "belgian" },
  { name: "wamman", address: "San benardino", phone_number: "5586-234", category: "french" },
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
  puts "Created #{restaurant_data[:name]}"
end

puts "Finished!"
