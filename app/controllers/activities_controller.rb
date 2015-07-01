class ActivitiesController < ApplicationController
  def index
  end

  def show
    @activity = Activity.find(params[:id])
    @users = User.all
  end

  def edit
  end

  def update
  end

  private

  # strong params

end
