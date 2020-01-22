class UsersController < ApplicationController
  def show
    @user = find(User)
  end

  def index
    @users = User.all
  end

  def index_by_alphabet
    @users = User.sort_by_alphabet
    render :index
  end

  def index_by_account_age
    @users = User.sort_by_account_age
    render :index
  end
end
