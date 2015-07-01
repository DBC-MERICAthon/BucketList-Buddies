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

  def create
    @activity = Activity.new(name: params[:activity][:name],
      description: params[:activity][:description]
    )
    if @activity.save
      current_user.activities << @activity
      redirect_to user_path(current_user)
    end
  end

  private

  # strong params

end
