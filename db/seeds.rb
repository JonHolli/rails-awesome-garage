# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the DB..."
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create(nickname: "Bob")
owner2 = Owner.create(nickname: "Jim")
owner3 = Owner.create(nickname: "Margaret")
owner4 = Owner.create(nickname: "Louie")

puts "Creating cars..."
Car.create!(brand: "Rolls Royce", model: "Phantom", fuel: "Unleaded Petrol", year: 1962, owner: owner1)
Car.create!(brand: "Ford", model: "Cortina", fuel: "Diesel", year: 1972, owner: owner2)
Car.create!(brand: "Vauxhall", model: "Cavalier", fuel: "Unleaded Petrol", year: 1981, owner: owner3)
Car.create!(brand: "BMW", model: "5 Series", fuel: "Unleaded Petrol", year: 1994, owner: owner4)

puts "Done! #{Owner.count} owners and #{Car.count} cars created"
