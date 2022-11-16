# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating restaurants..."
sushimambo ={name: "Sushi Mambo", address: "Holborn", category: "japanese"}
vapiano = {name: "Vapiano", address: "Shoreditch", category: "italian"}
friestars = {name: "Friestar", address: "Brussels", category: "belgian"}
chopsticks = {name: "Chopsticks", address: "Paris", category: "chinese"}
entrecote = {name: "Entrecote", address: "Soho", category: "french"}

[sushimambo, vapiano, friestars, chopsticks, entrecote].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
