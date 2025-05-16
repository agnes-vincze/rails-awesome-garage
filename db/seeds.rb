# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning the DB...'

Car.destroy_all
Owner.destroy_all

puts 'Creating owners...'

owner1 = Owner.create!(nickname: "carlover123")
owner2 = Owner.create!(nickname: "speedster")
owner3 = Owner.create!(nickname: "eco_driver")

puts 'Creating cars...'

Car.create!(
  owner: owner1,
  brand: "Chevrolet",
  model: "Camaro SS",
  year: 1977,
  fuel: "Petrol",
  img_url: "https://i.pinimg.com/736x/99/d0/21/99d021e2ced2044be4d10fe95abde843.jpg"
)

Car.create!(
  owner: owner2,
  brand: "Pontiac",
  model: "Solstice",
  year: 2007,
  fuel: "Petrol",
  img_url: "https://www.edmunds.com/assets/m/pontiac/solstice/2007/oem/2007_pontiac_solstice_convertible_base_fq_oem_1_500.jpg"
)


Car.create!(
  owner: owner3,
  brand: "Lamborghini",
  model: "Centenario",
  year: 2016,
  fuel: "Petrol",
  img_url: "https://i.pinimg.com/736x/2e/d8/66/2ed86619a94ac0b77e1f345d52864e7b.jpg"
)


puts "Done! #{Owner.count} owners and #{Car.count} cars created"
