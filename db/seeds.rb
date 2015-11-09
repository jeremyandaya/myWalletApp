# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

testUser = User.create(
	email: "test@test.com",
	phone: "1234567890",
	first_name: "test",
	last_name: "tester",
	balance: "500",
	password: "qwerty")

testUser2 = User.create(
	email: "best@test.com",
	phone: "0987654321",
	first_name: "Tony",
	last_name: "Stark",
	balance: "1000",
	password: "qwerty123")

testCard = Card.create(
	number: "0123456789123456",
	card_type: "Visa",
	expMonth: "04",
	expYear: "16",
	code: "347")

testCard2 = Card.create(
	number: "0123459485723456",
	card_type: "Master Card",
	expMonth: "10",
	expYear: "16",
	code: "123")

testUserCard = UserCard.create(
	user_id: 1,
	card_id: 1)

testUserCard2 = UserCard.create(
	user_id: 2,
	card_id: 2)







