# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all seeds ..."
User.destroy_all
College.destroy_all

puts "seeding users ..."
details = { first_name: 'Maddie', last_name: 'Lewis', email: 'maddie@simplywellbeing.com', password: "cambrunch" }
user = User.create!(details)

puts "seeding colleges"

# t.string "name"
#     t.string "address"
#     t.float "cost"
#     t.text "our_review"
#     t.string "star_quote"
#     t.integer "rating"
#     t.string "picture_url"

newnham = {name: 'Newnham College', address: 'Sidgwick Ave, Cambridge CB3 9DF', cost: 4.0, our_review: 'Absolutely amazing, a real dependable brunch.', star_quote: 'Unbelievable', rating: 5, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Cambridge_Newnham.JPG'}
College.create!(newnham)
puts "finished!"
