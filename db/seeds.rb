# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

10.times do
  User.create(username: Faker::Internet.user_name,
            name: Faker::Name.name,
            location: Faker::Address.state,
            blurb: Faker::Lorem.paragraph,
            photo: 'profile_pic.png',
            email: Faker::Internet.email)
end

Activity.create(name: )

Practice Meditation
Reconnect with an Old Friend
Go on a Picnic
Fly First Class
Go Skydiving
Go on a Cruise
Travel to a Different Country
Visit a Castle
Learn a New Language
Travel to a Country
Achieve a Fitness Goal
Run a Marathon
Learn a New Sport
Scuba Diving
Climb a Mountain
Perform a Kind Act
Be a Mentor
Volunteer Work
Talk to a Stranger
Go on a Road Trip
Go Backpacking
Learn a New Craft
Write a Book
Conquer Biggest Fear
Learn Sign Language
Publish a Book
Own a Pet
Public Speaking
Throw a Mega Party
Get a Makeover
Take a Class
Go on a Blind Date
Learn an Instrument
Learn a Martial Art
Take up Dancing

