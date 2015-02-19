# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({
  id: 1,
  first_name: "dude",
  last_name:  "bro",
  street: "123 main st",
  unit_number: "234",
  city: "Englewood",
  state: "CA",
  zip_code: "91011",
  phone: "2342534867",
  debit_card_number: 123,
  password: "password",
  email: "dude@bro.com"
  })

pickups = Pickup.create([{ user_id: 1, date: DateTime.now }, { user_id: 1, date: DateTime.now }])
