class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  private

  # Confirm whether logged_in user or not
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
