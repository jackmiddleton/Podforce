class UsersController < ApplicationController

  def show
    @tasks = Task.where(user: current_user)
    @user = current_user
  end
end
