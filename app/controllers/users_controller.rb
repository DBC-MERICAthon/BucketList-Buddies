class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def main
  end
end
