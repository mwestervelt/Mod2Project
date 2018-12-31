class ApplicationController < ActionController::Base

  before_action :setup_global_errors, :setup_user_stuff

  helper_method :current_user, :logged_in?

   def current_user
     @current_user ||= User.find_by(id: session[:user])
   end

   def logged_in?
     current_user != nil
   end

private

  def log_in!(user)
    session[:user_id] = user.id
  end

  def setup_global_errors
    @errors = flash[:errors]
  end

  def logged_in?
    !!session[:user_id]
  end

  def setup_user_stuff
    if session["user_id"]
      @logged_in_user = User.find(session["user_id"])
    end
  end

  def authenticate
    redirect_to new_session_path unless logged_in?
  end

end
