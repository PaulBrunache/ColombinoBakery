class SessionsController < ApplicationController
  before_action :session_active, only: [:new]
  
  def session_active
    if logged_in?
      redirect_to user_path(current_user)
    end
  end

  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash.now[:success] = "You are now logged in"
      log_in user
      redirect_to user
    else
      flash.now[:info] = "Well that's not suppose to happen, either your password or email is inccorect"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
