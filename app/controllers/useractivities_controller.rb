class UseractivitiesController < ApplicationController
  def update
    @activity = UserActivity.where(id: params[:id]).first
    @activity.completed = true
    @activity.save
    redirect_to user_path(current_user.id)
  end

  def destroy
    @activity = UserActivity.where(id: params[:id]).first
    @activity.destroy
    redirect_to user_path(current_user.id)
  end

  def create
    @useractivity = UserActivity.where(id: params[:id]).first
    current_user.activities << @useractivity.activity
    redirect_to user_path(current_user.id)
  end
end
