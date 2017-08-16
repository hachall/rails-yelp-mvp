# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

6.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  name = Faker::Company.name
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.cell_phone
  url = 'https://unsplash.it/200/300/?random'

  Restaurant.create(name: name, address: address, category: category, phone_number: phone_number, url: url)
end
