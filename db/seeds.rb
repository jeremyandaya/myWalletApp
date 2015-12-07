# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
	email: "peter@parker.com",
	phone: "1234567890",
	first_name: "Peter",
	last_name: "Parker",
	balance: "500.00",
	password: "1q2w3e4r")

User.create(
	email: "tony@stark.com",
	phone: "0987654321",
	first_name: "Tony",
	last_name: "Stark",
	balance: "10.00",
	password: "1q2w3e4r")

User.create(
	email: "bruce@wayne.com",
	phone: "0987654321",
	first_name: "Bruce",
	last_name: "Wayne",
	balance: "19.00",
	password: "1q2w3e4r")

User.create(
	email: "clark@kent.com",
	phone: "0987654325",
	first_name: "Clark",
	last_name: "Kent",
	balance: "90.00",
	password: "1q2w3e4r")

Card.create(
	number: "4123456789123456",
	card_type: "Visa",
	expMonth: "04",
	expYear: "16",
	code: "347")

Card.create(
	number: "5523459485723456",
	card_type: "Master Card",
	expMonth: "11",
	expYear: "16",
	code: "129")

Card.create(
	number: "3423459485723456",
	card_type: "American Express",
	expMonth: "10",
	expYear: "16",
	code: "173")

Card.create(
	number: "0023459485723456",
	card_type: "Discover",
	expMonth: "03",
	expYear: "16",
	code: "198")

UserCard.create(
	user_id: 1,
	card_id: 1)

UserCard.create(
	user_id: 2,
	card_id: 2)

UserCard.create(
	user_id: 3,
	card_id: 3)

UserCard.create(
	user_id: 4,
	card_id: 4)







