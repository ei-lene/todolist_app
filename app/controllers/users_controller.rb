class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show  
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect to "/users"
  end

  def update
  end

  def edit  
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])

    redirect_to "/users"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to "/users"
  end
end
