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
le_max = { name: "Le Max", address: "1 rue de la frites, Belgique", category: "belgian" }
pizza_max = { name: "Pizza Max", address: "36 route du pizza yolo, Italie", category: "italian" }
max_nem = { name: "Max Nem", address: "42 voie du chien grille, Beijing", category: "chinese" }
max_entrecote = { name: "Max Entrecote", address: "50 boulevard de la bonne vache,France", category: "french" }
max_sushi = { name: "Max Sushi", address: "69 cours de la geisha,Kyoto", category: "japanese" }

[le_max, pizza_max, max_nem, max_entrecote, max_sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
