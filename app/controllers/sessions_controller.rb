class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email].downcase)
    #user = User.where(:email => params[:email]).first
    if user && user.authenticate(params[:password])
      login(user)
      redirect_to root_url, notice:"Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    logout
    redirect_to root_url, alert:"Logged out!"
  end

end
