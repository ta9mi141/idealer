# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: "Example User",
                    email: "example@railstutorial.org",
                    password: "foobar",
                    password_confirmation: "foobar")

suits = ['H', 'C', 'S', 'D']
10.times do
  content = Faker::Lorem.sentence(5)
  suits.each { |suit| user.ideas.create!(content: content, suit: suit) }
end
