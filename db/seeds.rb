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

Activity.create(name: 'Practice Meditation', description: 'Meditation leads to a deeper level of physical relaxation')
Activity.create(name: 'Reconnect with an Old Friend', description: 'Missing a high school reunion is no fun but it\'s never too late!')
Activity.create(name: 'Go on a Picnic', description: 'Relax unde the sun, but watch the ants!')
Activity.create(name: 'Fly First Class', description: 'Between the elbow space and the wine it\'s worth it')
Activity.create(name: 'Go Skydiving', description: 'Skydive after flying first class--two birds with one stone!')
Activity.create(name: 'Go on a Cruise', description: 'This is relaxing time! LEAVE YOUR LAPTOP AT HOME!')
Activity.create(name: 'Travel to a Different Country', description: 'Get in line now for that passport renewal')
Activity.create(name: 'Visit a Castle', description: 'Your princess is in another castle')
Activity.create(name: 'Learn a New Language', description: 'and travel to that country afterward? Two birds with one stone!')
Activity.create(name: 'Achieve a Fitness Goal', description: 'Support from friends makes this a cinch')
Activity.create(name: 'Run a Marathon', description: 'Make sure to train, not sprain')
Activity.create(name: 'Learn a New Sport', description: 'Ease into the rugby though')
Activity.create(name: 'Scuba Dive', description: 'Try not to get The Little Mermaid songs stuck in your head in the process')
Activity.create(name: 'Climb a Mountain', description: 'And scream from the top')
Activity.create(name: 'Perform a Kind Act', description: 'What goes around comes around')
Activity.create(name: 'Be a Mentor', description: 'Giving back to others is a gift to yourself')
Activity.create(name: 'Volunteer Work', description: 'Not just for the holidays. Make a commitment!')
Activity.create(name: 'Talk to a Stranger', description: '...but not too strange')
Activity.create(name: 'Go on a Road Trip', description: 'Needs to be long enough for your playlist to play through twice!')
Activity.create(name: 'Go Backpacking', description: 'Go out and explore')
Activity.create(name: 'Learn a New Craft', description: 'Mother\'s Day gifts made easy')
Activity.create(name: 'Write a Book', description: 'Maybe no one will read it. Maybe everyone will read it')
Activity.create(name: 'Conquer Biggest Fear', description: 'Work your way up, this is the hardest one')
Activity.create(name: 'Throw a Mega Party', description: 'Make sure to have a budget for the good beer')
Activity.create(name: 'Get a Makeover', description: 'And take a selfie!')
Activity.create(name: 'Learn an Instrument', description: 'Bethooven Symphony 15?')

activities = Activity.all

# User.all.each do |user|
#   selected = []
#   9.times do
#     selected << (activities - selected).sample
#   end
#   user.activities << selected
# end

User.all.each do |user|
  selected = []
  selected << (activities - selected).sample(10)
  user.activities << selected
end

