class UsersController < ApplicationController
  def show
    @user = find(User)
  end

  def index
    @users = User.all
  end
end
