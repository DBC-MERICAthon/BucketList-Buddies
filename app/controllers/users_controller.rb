class UsersController < ApplicationController
  def show
    @user = current_user
    @user_activities = @user.activities
    @activity = Activity.new
  end

  def main
  end

end
