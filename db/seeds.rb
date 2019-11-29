# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Cleaning database..."
Hen.destroy_all
User.destroy_all
Reservation.destroy_all

puts "Creating data..."

user1 = User.create!(
  username: "chiara",
  email: "chiara@gmail.com",
  password: "password"
  )
  url = "https://images.pexels.com/photos/375510/pexels-photo-375510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  puts "creating hen"
  2.times do
    hen = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "370 chemin de peidessalle Valbonne",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..10),
      user: user1
      )
      hen.remote_photo_url = url
      hen.save!
  end

user2 = User.create!(
  username: "sandra",
  email: "sandra@gmail.com",
  password: "password"
  )
  url2 = "https://images.pexels.com/photos/195226/pexels-photo-195226.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  puts "creating hen2"
  2.times do
    hen2 = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "58 boulevard charles livon Marseille",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..10),
      user: user2
      )
      hen2.remote_photo_url = url2
      hen2.save!
  end

user3 = User.create!(
  username: "christy",
  email: "christy@gmail.com",
  password: "password"
  )
  url3 = "https://images.pexels.com/photos/1216482/pexels-photo-1216482.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  puts "creating hen3"
  2.times do
    hen3 = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "167 rue paradis Marseille",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..10),
      user: user3
      )
      hen3.remote_photo_url = url3
      hen3.save!
  end

user4 = User.create!(
  username: "amelie",
  email: "amelie@gmail.com",
  password: "password"
  )
  url4 = "http://poulespondeuses.com/wp-content/uploads/2012/11/elevage-poules-pondeuses-PP.png"
  puts "creating hen4"
  2.times do
    hen4 = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "1158 chemin des Farguettes Montauban",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..10),
      user: user4
      )
      hen4.remote_photo_url = url4
      hen4.save!
  end

  user5 = User.create!(
  username: "Jojo",
  email: "jojo@gmail.com",
  password: "password"
  )
  url5 = "https://poules-club.com/wp-content/uploads/2019/04/poule-orpington.jpg"
  puts "creating hen5"
  2.times do
    hen5 = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "10 avenue de saint-barnabé Marseille",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..10),
      user: user5
      )
      hen5.remote_photo_url = url5
      hen5.save!
  end

user6 = User.create!(
  username: "Juju",
  email: "juju@gmail.com",
  password: "password"
  )
  url6 = "https://france3-regions.francetvinfo.fr/nouvelle-aquitaine/sites/regions_france3/files/styles/top_big/public/assets/images/2019/06/05/hens-3420126_1280-4276368.jpg?itok=2nPqX9Ep"
  puts "creating hen6"
  3.times do
    hen6 = Hen.new(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      address: "5 rue de yla trompette La Rochelle",
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:4..10),
      user: user6
      )
      hen6.remote_photo_url = url6
      hen6.save!
  end


# 15.times do
#   user = User.create!(
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(min_length: 6)
#     )
#   cities = ["Montauban", "Marseille", "Saint-Martin de Ré", "Dijon", "Arcachon", "Biscarrosse", "Lille", "Le Mans", "Strasbourg", "Annecy", "La Roche Sur Yon", "La Rochelle"]
#   5.times do
#     sleep(1)
#     url = "https://images.pexels.com/photos/375510/pexels-photo-375510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
#     hen = Hen.new(
#       name: Faker::Name.female_first_name,
#       description: Faker::Lorem.paragraph,
#       address: cities.sample,
#       eggs_per_day: Faker::Number.within(range:1..10),
#       price_per_day: Faker::Number.within(range:5..20),
#       user: user
#       )
#       hen.remote_photo_url = url
#       hen.save!
#     end
#   resa = Reservation.create!(
#     start_date: "2019-11-30",
#     end_date: "2019-12-05",
#     user: User.all.sample,
#     hen: user.hens.first
#     )
#   end

puts "Database created !!!"




