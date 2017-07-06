# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tweet.destroy_all

u1 = User.create!(name: "Joaquin", email: "joaquin@gmail.com")
u2 = User.create!(name: "Pedro", email: "pedro@gmail.com")

u1.tweets.build(content: "lorem ipsum").save
u1.tweets.build(content: "lorem ipsum lorem").save
u2.tweets.build(content: "lorem ipsum ipsum").save
u1.tweets.build(content: "lorem ipsum lorem lorem").save
