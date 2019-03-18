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
Attendance.destroy_all


user1 = User.create!(email: 'manon@fenery.fr', password: 'manonfenery', password_confirmation: 'manonfenery', first_name: "Manon", last_name: "de Jeanjass", nickname: "Nonam")
user2 = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567', first_name: "David", last_name: "Cohen", nickname: "Coco")
user3 = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567', first_name: "Marie", last_name: "Sainte", nickname: "Virgin")
user4 = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567', first_name: "Boubou", last_name: "Bobo", nickname: "BB")
user5 = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567', first_name: "Corky", last_name: "de Montaigu", nickname: "Le Corky")
user6 = User.create!(email: Faker::Internet.email, password: '1234567', password_confirmation: '1234567', first_name: "Jeaninne", last_name: "Bergere", nickname: "JB")




event1 = Event.create!(title: "Battle Original Hip Hop", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Popping", "Locking"], admin_id: User.all.sample.id)
event2 = Event.create!(title: "Cours Voguing", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Cours", styles: ["Voguing"], class_level: "Debutant", class_teacher: "Boubou Sensei", admin_id: User.all.sample.id)
event3 = Event.create!(title: "Battle Paris", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Popping", "Locking", "Break", "All Styles"], admin_id: User.all.sample.id)
event4 = Event.create!(title: "Battle Break", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Locking", "Break", "Popping", "House"], admin_id: User.all.sample.id)
event5 = Event.create!(title: "Workshop", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Cours", styles: ["Hip Hop New Style"], class_level: "Avance", class_teacher: "Ton pere", admin_id: User.all.sample.id)
event6 = Event.create!(title: "Battle M&N", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), price: Faker::Number.number(2), location_name: "Bercy Hotel Arena", location_address: "10 rue Fontaine", location_zipcode: "75014", location_city: Faker::Address.city, location_country: "France", category: "Battle", styles: ["Locking", "Popping"], admin_id: user1.id)


attendance1 = Attendance.create!(style: "Popping", dancer_id: user1.id, event_id: event6.id)
attendance2 = Attendance.create!(style: "Popping", dancer_id: user2.id, event_id: event6.id)
attendance3 = Attendance.create!(style: "Locking", dancer_id: user3.id, event_id: event6.id)
attendance4 = Attendance.create!(style: "Popping", dancer_id: user4.id, event_id: event6.id)
attendance5 = Attendance.create!(style: "Locking", dancer_id: user5.id, event_id: event6.id)
attendance6 = Attendance.create!(style: "Popping", dancer_id: user6.id, event_id: event6.id)