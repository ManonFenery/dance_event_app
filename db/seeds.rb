# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all

10.times do
  event = Event.create!(title: Faker::Quotes::Shakespeare.hamlet_quote, description: Faker::Quotes::Shakespeare.hamlet_quote, start_date: Faker::Date.forward(5), duration: Faker::Number.number(2), price: Faker::Number.number(2), location: Faker::Address.city, category: Faker::Creature::Cat.name, style: Faker::Creature::Cat.name)
end
