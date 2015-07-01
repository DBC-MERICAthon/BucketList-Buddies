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
users = User.all
users.each do |user|
  temp_activities = activities.shuffle.take(8)
  temp_activities.each do |activity|
    act_object = Activity.create(name: activity, description: description.split(' ').shuffle.join(' '))
    user.activities.push(act_object)
  end
end

get all activities of this user
for each activity, get each user that shares it.
add each user as key, add the activity to the hash


