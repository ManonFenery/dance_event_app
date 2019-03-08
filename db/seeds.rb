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
  event = Event.create!(title: "Battle Original Hip Hop", description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), duration: Faker::Number.number(2), price: Faker::Number.number(2), location: Faker::Address.city, category: Faker::Creature::Cat.name, style: Faker::Creature::Cat.name, admin_id: User.all.sample.id)
end



