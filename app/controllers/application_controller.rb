class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :user_online
  include ApplicationHelper

  private
    def user_online
      unless logged_in?
        redirect_to login_path
        flash[:error] = 'You must be logged in to perform this action'
      end
    end



end
