class UsersController < ApplicationController
  def show
    @user = current_user
    @user_activities = @user.activities
    @activity = Activity.new
  end

  def main
  end

  def matches
    users_with_activities = {}

    #get all activitites of this user
    activities = @user.activities
    users_with_activities = Hash.new(Array.new)
    activities.each do |act|
      #for each activity that I do
      user_activities= UserActivity.where(activity_id: act.id) #rows in the join table
      user_activities.each do |user_activity| #get users which share
        this_user_obj = User.find(user_activity.user_id)
        this_activity_obj = Activity.find(user_activity.activity_id)
        if !(users_with_activities.has_key?(this_user_obj))
          users_with_activities[this_user_obj] = [ this_activity_obj]
          puts "&" * 100
          puts "users_with_activities, name: #{this_user_obj.username}, activity: #{users_with_activities[this_user_obj][0].name}"
        elsif !(users_with_activities[this_user_obj].include?(this_activity_obj))
          puts "*" * 100
          puts "users_with_activities, name: #{this_user_obj.username}, activity: #{users_with_activities[this_user_obj][0].name}"
          users_with_activities[this_user_obj] += [this_activity_obj]
        end

      end
    end


    #   get all users with that activity from user_activities

    #   if user is not in hash, add user and array containing activity
    #   otherwise push activity into value array of user used as key

    users_with_activity= user_activities.where(activity_id: 1)

  end
end


