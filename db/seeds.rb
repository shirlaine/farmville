# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Puts Seed for Farms

puts "Seeding data for 1 farmer"

user = User.find_or_initialize_by(email: "farmer1@gmail.com")
user.password = '111111'
user.save


puts "Seeding data for 1 location"

Location.find_or_create_by!(
  place: 'East'
  )

puts "Seeding data for 1 farm"

Farm.create(
    title: 'Ghengkis farm', #=> 7
    url: 'Faker::HowIMetYourMother.quote',
    user_id: 1,
    location_id: 1
    )
