# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'
parks_names = [
  'Jelly Stone Park',
  'White Water Park',
  'Yellowstone Park',
  'Weekie Wachie Park',
  'Sequoia Park'
]

parks_names.each do |park_name|
  Park.create(
    name: park_name,
    max_capacity: SecureRandom.random_number(20) + 5,
    has_showers: SecureRandom.random_number(10) % 2 == 0,
    cars_allowed: SecureRandom.random_number(10) % 2 == 0
  )
end
