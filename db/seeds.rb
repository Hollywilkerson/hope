# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 300.times do |person|
  person.name = Faker::Name.name
  person.email = Faker::Internet.email
  person.phone = Faker::PhoneNumber.phone_number
  person.street = Faker::Address.street_address
  person.city = Faker::Address.city
  person.state = Faker::Address.state
  person.zip = Faker::Address.zip_code
end
