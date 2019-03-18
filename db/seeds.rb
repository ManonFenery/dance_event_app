# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all
User.destroy_all

10.times do
	user = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567')
end



event1 = Event.create!(title: "Battle Original Hip Hop", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Popping", "Locking"], admin_id: User.all.sample.id)
event2 = Event.create!(title: "Cours Voguing", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Cours", styles: ["Voguing"], class_level: "Debutant", class_teacher: "Boubou Sensei", admin_id: User.all.sample.id)
event3 = Event.create!(title: "Battle Paris", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Popping", "Locking", "Break", "All Styles"], admin_id: User.all.sample.id)
event4 = Event.create!(title: "Spectacle", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Spectacle", styles: ["All Styles", "Locking", "Break", "Popping", "House"], admin_id: User.all.sample.id)
event5 = Event.create!(title: "Workshop", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Cours", styles: ["Hip Hop New Style"], class_level: "Avance", class_teacher: "Ton pere", admin_id: User.all.sample.id)

