# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all seeds ..."
User.destroy_all

puts "seeding users ..."
user = User.create!(first_name: 'Maddie', last_name: 'Lewis', email: 'maddie@simplywellbeing.com', password: "cambrunch")
puts "finished!"
