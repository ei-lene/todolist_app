class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user # enables this to be accessed from views

  def logged_in?
    true if current_user
    redirect_to new_session_path, alert: "Please log in" unless current_user 
  end

end
