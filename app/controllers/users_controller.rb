class UsersController < ApplicationController
  def show
    @user = User.where(id: params[:id]).first
    @completed_activities = []
    @noncompleted_activities = []
    user_activities = UserActivity.where(user_id: @user.id)
    user_activities.each do |activity|
      if activity.completed?
        @completed_activities << activity
      else
        @noncompleted_activities << activity
      end
    end
    @activity = Activity.new

  end

  def main
  end

  def matches
    users_with_activities = {}
    @user = current_user
    #get all activitites of this user
    activities = @user.activities

    activities = User.first.activities
    @users_with_activities = Hash.new(Array.new)
    activities.each do |act|
      #for each activity that I do
      user_activities= UserActivity.where(activity_id: act.id) #rows in the join table
      user_activities.each do |user_activity| #get users which share
        this_user_obj = User.find(user_activity.user_id)
        this_activity_obj = Activity.find(user_activity.activity_id)
        if !(@users_with_activities.has_key?(this_user_obj))
          @users_with_activities[this_user_obj] = [this_activity_obj]
        elsif !(@users_with_activities[this_user_obj].include?(this_activity_obj))
          @users_with_activities[this_user_obj] += [this_activity_obj]
        end
      end
    end
    @users_with_activities.delete(@user)
  end

end


#add to route