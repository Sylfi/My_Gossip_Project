# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Comment.destroy_all
puts "Previous data destroyed"

10.times do
    City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
    puts "10 dummy cities created"

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(first_name: first_name, last_name: last_name, email: "#{first_name}.#{last_name}@yopmail.com", age: Faker::Number.between(from: 12, to: 82), city: City.all.sample,
    description: Faker::Quote.famous_last_words)
    #Special thanks to Lucas ! As well as to God who created Lucas and I as we are today. 
end
    puts "10 dummy users created"

20.times do
    Gossip.create(title: Faker::Book.title, content: Faker::ChuckNorris.fact, user: User.all.sample)
end
    puts "20 juicy gossips created"

30.times do
    Comment.create(content: Faker::Marketing.buzzwords, gossip: Gossip.all.sample)
end

puts "30 comments created"




