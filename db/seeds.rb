# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create!(fname:   "John",
               lname:    "Doe",
               email:   "john.doe@gmail.com",
               phone:   "555-555-5555",
               address:    "123 Main St",
               city:    "denver",
               zip:      "55555",
               lat:     39.99,
               long:    104.99)

300.times do |person|
   fname = Faker::Name.first_name
   lname = Faker::Name.last_name
   email = Faker::Internet.safe_email
   phone = Faker::PhoneNumber.phone_number
   address = Faker::Address.street_address
   city = Faker::Address.city
   zip= Faker::Address.zip


   lat= rand + 39
   long= rand -105

  Person.create!(fname: fname,
                  lname: lname,
                  email:   email,
                  phone:   phone,
                  address: address,
                  city:    city,
                  zip:     zip,
                  lat:     lat,
                  long:    long)
end
