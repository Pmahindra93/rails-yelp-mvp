require 'faker'

Restaurant.destroy_all
puts "DB clean"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = %w[chinese italian japanese french belgian]

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.leading_zero_number(digits: 10), category: category.sample)
end

puts "done"
