class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, notice: "You are signed up!"
    else
      render 'new'
    end
  end

  def show
    @users = User.all
  end
end
