class ApplicationController < ActionController::Base
  include SessionsHelper
  
  private
  
  def require_user_loggied_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
