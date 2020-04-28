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

details1 = { first_name: 'Rhiannon', last_name: 'Parr', email: 'parrrhiannon@gmail.com', password: "Hotdog24" }
User.create!(details1)

puts "seeding colleges"

# t.string "name"
#     t.string "address"
#     t.float "cost"
#     t.text "our_review"
#     t.string "star_quote"
#     t.integer "rating"
#     t.string "picture_url"

newnham = {name: 'Newnham College', address: 'Newnham College, Sidgwick Ave, Cambridge CB3 9DF', cost: 4.0, our_review: 'Absolutely amazing, a real dependable brunch.', star_quote: 'Unbelievable', rating: 5, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Cambridge_Newnham.JPG'}
trinity = {name: 'Trinity College', address: 'Trinity College, Cambridge CB2 1TQ', cost: 5.0, our_review: 'Delicious, made even better by the presence of Henry VIII calves watching over you.', star_quote: 'The calves maketh the meal', rating: 5, picture_url: 'https://live.staticflickr.com/7649/27801451132_55498b8c7b_b.jpg'}
College.create!(newnham)
College.create!(trinity)
puts "finished!"
