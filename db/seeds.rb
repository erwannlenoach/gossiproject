# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|
 	users = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3))
 	cities = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
end 


20.times do |i|
 	gossips = Gossip.create(title: Faker::Quote.yoda, content: Faker::Lorem.sentence(word_count: 9))
end 


10.times do |i|
 	tags = Tag.create(title: Faker::Kpop.boy_bands)
 
end 

10.times do |i|
 	privatemessages = PrivateMessage.create(content: Faker::Movies::HarryPotter.quote)
 end 