# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

User.create(username: "SNLSF",
               name: "Steph",
               location: "San Francisco",
               blurb: "Curiosity has yet killed this cat!",
               password: 'temppass',
               email: "stephanielopez.sf@gmail.com")
User.create(username: "icstunna",
               name: "Mikhail",
               location: "San Francisco",
               blurb: "Give it to me straight.",
               password: 'temppass',
               email: "mdelostr@gmail.com")
User.create(username: "Mikey",
               name: "Mike",
               location: "San Francisco",
               blurb: "Resistance is futile.",
               password: 'temppass',
               email: "michaelmfarr@gmail.com")
User.create(username: "Super_Yan",
               name: "Miranda",
               location: "San Jose, CA",
               blurb: "I always have something to say.",
               password: 'temppass',
               email: "super.y4n@gmail.com")
User.create(username: "miniyakkos",
               name: "Ayako",
               location: "San Francisco",
               blurb: "Mahalo",
               password: 'temppass',
               email: "ayakokurushima@gmail.com")

10.times do
  User.create(username: Faker::Internet.user_name,
               name: Faker::Name.name,
               location: Faker::Address.state,
               blurb: Faker::Lorem.paragraph,
               password: 'temppass',
               email: Faker::Internet.email)
end

Activity.create(name: 'Practice Meditation', description: Faker::Lorem.sentence)
Activity.create(name: 'Reconnect with an Old Friend', description: Faker::Lorem.sentence)
Activity.create(name: 'Go on a Picnic', description: Faker::Lorem.sentence)
Activity.create(name: 'Fly Firstbin/ Class', description: Faker::Lorem.sentence)
Activity.create(name: 'Go Skydiving', description: Faker::Lorem.sentence)
Activity.create(name: 'Go on a Cruise', description: Faker::Lorem.sentence)
Activity.create(name: 'Travel to a Different Country', description: Faker::Lorem.sentence)
Activity.create(name: 'Visit a Castle', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn a New Language', description: Faker::Lorem.sentence)
Activity.create(name: 'Achieve a Fitness Goal', description: Faker::Lorem.sentence)
Activity.create(name: 'Run a Marathon', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn a New Sport', description: Faker::Lorem.sentence)
Activity.create(name: 'Scuba Dive', description: Faker::Lorem.sentence)
Activity.create(name: 'Climb a Mountain', description: Faker::Lorem.sentence)
Activity.create(name: 'Perform a Kind Act', description: Faker::Lorem.sentence)
Activity.create(name: 'Be a Mentor', description: Faker::Lorem.sentence)
Activity.create(name: 'Volunteer Work', description: Faker::Lorem.sentence)
Activity.create(name: 'Talk to a Stranger', description: Faker::Lorem.sentence)
Activity.create(name: 'Go on a Road Trip', description: Faker::Lorem.sentence)
Activity.create(name: 'Go Backpacking', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn a New Craft', description: Faker::Lorem.sentence)
Activity.create(name: 'Write a Book', description: Faker::Lorem.sentence)
Activity.create(name: 'Conquer Biggest Fear', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn Sign Language', description: Faker::Lorem.sentence)
Activity.create(name: 'Publish a Book', description: Faker::Lorem.sentence)
Activity.create(name: 'Own a Pet', description: Faker::Lorem.sentence)
Activity.create(name: 'Throw a Mega Party', description: Faker::Lorem.sentence)
Activity.create(name: 'Get a Makeover', description: Faker::Lorem.sentence)
Activity.create(name: 'Go on a Blind Date', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn an Instrument', description: Faker::Lorem.sentence)
Activity.create(name: 'Learn a Martial Art', description: Faker::Lorem.sentence)
Activity.create(name: 'Take up Dancing', description: Faker::Lorem.sentence)




User.all.each do |user|
  10.times do
    offset = rand(Activity.count)
    user.activities << Activity.offset(offset).first

  end
end
