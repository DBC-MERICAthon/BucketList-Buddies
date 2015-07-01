class UsersController < ApplicationController
  def show
    @user = current_user
    @user_activities = @user.activities
    @activity = Activity.new
  end

  def main
    @home_page = true
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
        if !(@users_with_activities.has_key?(this_user_obj))
          @users_with_activities[this_user_obj] = [ this_activity_obj]
        elsif !(@users_with_activities[this_user_obj].include?(this_activity_obj))
          @users_with_activities[this_user_obj] += [this_activity_obj]
        end
      end
    end
  end

end


