# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

owner1 = Owner.create!(nickname: "carlover123")
owner2 = Owner.create!(nickname: "speedster")
owner3 = Owner.create!(nickname: "eco_driver")

Car.create!(
  owner: owner1,
  brand: "Toyota",
  model: "Corolla",
  year: 2020,
  fuel: "Petrol"
)

Car.create!(
  owner: owner2,
  brand: "Tesla",
  model: "Model 3",
  year: 2022,
  fuel: "Electric"
)

Car.create!(
  owner: owner3,
  brand: "Volkswagen",
  model: "Golf",
  year: 2018,
  fuel: "Diesel"
)
