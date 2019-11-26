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

20.times do
  user = User.create!(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
    )
  cities = ["Montauban", "Marseille", "Saint-Martin de Ré", "Dijon", "Arcachon", "Biscarrosse", "Lille", "Le Mans", "Strasbourg", "Annecy", "La Roche Sur Yon", "La Rochelle"]
  8.times do
    url = "https://source.unsplash.com/collection/8666324"
    hen = Hen.create!(
      name: Faker::Name.female_first_name,
      description: Faker::Lorem.paragraph,
      city: cities.sample,
      eggs_per_day: Faker::Number.within(range:1..10),
      price_per_day: Faker::Number.within(range:5..20),
      photo: url,
      user: user
      )
    end
  resa = Reservation.create!(
    start_date: "2019-11-30",
    end_date: "2019-12-05",
    user: User.all.sample,
    hen: user.hens.first
    )
  end

puts "Database created !!!"




