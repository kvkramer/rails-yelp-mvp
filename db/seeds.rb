# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number: "021345" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: "021345"}
pizza_west =  { name: "Pizza West", address: "46 Wimpole St, London E1 6PQ", category: "french", phone_number: "021345"}
lola = { name: "Lola", address: "7 Lola St, London E2 7JE", category: "italian", phone_number: "021345"}
penguin = { name: "Penguin", address: "7 Penguin St, London E2 7JE", category: "chinese", phone_number: "021345"}

restaurant_list = [dishoom, pizza_east, pizza_west, lola, penguin]

restaurant_list.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
