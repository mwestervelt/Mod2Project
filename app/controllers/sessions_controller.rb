class SessionsController < ApplicationController

  def new

  end


  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      #log me in
      log_in!(@user)
      redirect_to resolutions_path
    else
      #don't
    end
  end

end
