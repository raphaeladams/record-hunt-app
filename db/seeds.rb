# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# sample shop
Shop.create!(name: "Example Shop",
  city: "Example City",
  address: "123 Example Street")

# generate additional shops
9.times do |n|
  name = "Shop#{ n+2 }"
  city = Faker::Address.city
  address = Faker::Address.street_address

  Shop.create!(name: name, 
    city: city, 
    address: address)
end


# generate records for shops
shops = Shop.all
shops.each do |shop|
  50.times do
    title = Faker::Music.album
    artist = Faker::Music.band
    year = rand(1948..Time.now.year)
    price = rand(0..40)
  
    shop.records.create!(title: title, 
      artist: artist, 
      year: year, 
      price: price)
  end
end



# # sample record
# Record.create!(title: "Example Record", 
#   artist: "Example Artist", 
#   year: 2000, 
#   price: 30)

# # additional records
# 50.times do
#   title = Faker::Music.album
#   artist = Faker::Music.band
#   year = rand(1948..Time.now.year)
#   price = rand(0..40)

#   Record.create!(title: title, 
#     artist: artist, 
#     year: year, 
#     price: price)
# end