# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 def self.random_weight_for_height(height)
  bmi = (19..40).to_a.sample
  sprintf("%.2f", ((height * height) * bmi)/703)
end

  ages = (5..25).to_a
  heights = {
    5 => (40..46).to_a,
    6 => (42..49).to_a,
    7 => (44..52).to_a,
    8 => (47..54).to_a,
    9 => (49..57).to_a,
    10 => (50..59).to_a,
    11 => (52..61).to_a,
    12 => (54..64).to_a,
    13 => (56..66).to_a,
    14 => (59..70).to_a,
    15 => (62..72).to_a,
    16 => (63..73).to_a,
    17 => (64..74).to_a,
    18 => (65..75).to_a,
    19 => (65..75).to_a,
    20 => (65..75).to_a,
    21 => (65..75).to_a,
    22 => (65..75).to_a,
    23 => (65..75).to_a,
    24 => (65..75).to_a,
    25 => (65..75).to_a,


  }



  Person.create!(fname: "John",
    lname: "Doe",
    email: "john.doe@gmail.com",
    phone: "555-555-5555",
    address: "123 Main St",
    city: "denver",
    zip: "55555",
    lat: 39.99,
    long: 104.99,
    hair_color: "blonde",
    eye_color: "brown",
    age: 16,
    weight: 115,
    height: 62,
    dob: "05/10/1985",
    last_seen: "01/15/2011",
    last_seen_wearing_shirt_color: "green",
    last_seen_wearing_pant_type:  "jeans",
    image:   "holly.jpg",
    paragraph: "I was last seen at the mall of america shopping with my sister. I had went to the \
some food court to get some lunch. "


  )



  500.times do |person|

    fname = Faker::Name.first_name
    lname = Faker::Name.last_name
    email = Faker::Internet.safe_email
    phone = Faker::PhoneNumber.phone_number
    address = Faker::Address.street_address
    city = Faker::Address.city
    zip= Faker::Address.zip
    lat = rand() + 39
    long = rand() -104
    hair_color = ['red', 'brown', 'black', 'blonde'].sample
    eye_color = ['blue', 'green', 'brown', 'hazel'].sample
    age = ages.sample
    height = heights[age].sample
    weight = random_weight_for_height(height)
    dob = (age).years.ago + rand(11).months + rand(30).days
    last_seen = Faker::Date.between(8.years.ago, Date.today)
    last_seen_wearing_shirt_color = ['blue', 'red', 'black', 'green', 'purple', 'pink', 'orange'].sample
    last_seen_wearing_pant_type = ['blue jeans', 'black jeans', 'slacks'].sample
    image = Faker::Avatar.image
    paragraph = Faker::Lorem.paragraph(2, true, 4)





    height = heights[age].sample
    Person.create!(fname: fname,
      lname: lname,
      email: email,
      phone: phone,
      address: address,
      city: city,
      zip: zip,
      lat: lat,
      long: long,
      hair_color: hair_color,
      eye_color: eye_color,
      age: age,
      weight: weight,
      height: height,
      dob: dob,
      last_seen: last_seen,
      last_seen_wearing_shirt_color: last_seen_wearing_shirt_color,
      last_seen_wearing_pant_type: last_seen_wearing_pant_type,
      image: image,
      paragraph: paragraph


    )





end
