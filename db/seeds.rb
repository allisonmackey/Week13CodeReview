# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Park.destroy_all

100.times do
  park = Park.create!(
    name: Faker::Address.state + " State Park",
    address: Faker::Address.full_address,
    website: Faker::Internet.url, 
    open: false, 
    phone_number: Faker::PhoneNumber.phone_number 
  )

  park = Park.create!(
    name: Faker::Books::Dune.planet + " National Park",
    address: Faker::Address.full_address,
    website: Faker::Internet.url, 
    phone_number: Faker::PhoneNumber.phone_number, 
    open: true
  )
end

p "created #{Park.count} parks"

