# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

20.times do
  User.create!(username: Faker::Internet.user_name,
               name: Faker::Name.name,
               location: Faker::Address.state,
               blurb: Faker::Lorem.paragraph,
               photo: 'profile_pic.png',
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


activities = [
    'Practice Meditation',
    'Reconnect with an Old Friend',
    'Go on a Picnic',
    'Fly Firstbin/ Class',
    'Go Skydiving',
    'Go on a Cruise',
    'Travel to a Different Country',
    'Visit a Castle',
    'Learn a New Language',
    'Achieve a Fitness Goal',
    'Run a Marathon',
    'Learn a New Sport',
    'Scuba Dive',
    'Climb a Mountain',
    'Perform a Kind Act',
    'Be a Mentor',
    'Volunteer Work',
    'Talk to a Stranger',
    'Go on a Road Trip',
    'Go Backpacking',
    'Learn a New Craft',
    'Write a Book',
    'Conquer Biggest Fear',
    'Learn Sign Language',
    'Publish a Book',
    'Own a Pet',
    'Throw a Mega Party',
    'Get a Makeover',
    'Go on a Blind Date',
    'Learn an Instrument',
    'Learn a Martial Art',
    'Take up Dancing']

description = "Et voluptates et autem. Ut a eum minima placeat et"
# users = User.all
# users.each do |user|
#   temp_activities = activities.shuffle.take(12)
#   temp_activities.each do |activity|
#     UserActivity.create(name: activity, description: description.split(' ').shuffle.join(' '))
#   #  user.activities.create(name: activity, description: description.split(' ').shuffle.join(' '))

User.all.each do |user|
  10.times do
    offset = rand(Activity.count)
    user.activities << Activity.offset(offset).first

  end
end
