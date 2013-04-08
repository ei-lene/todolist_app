class UsersController < ApplicationController
  before_filter :logged_in?, only: [:edit, :update, :destroy ]

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
    @user.email = @user.email.downcase

    if @user.save
      login(@user)
      redirect_to root_url, notice: "Thank you for signing up!"  
    else
     render "new" 
    end
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
