class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!

  def authenticate_active_admin_user!
    authenticate_user! 
    unless current_user.role? :admin
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path 
    end
  end
  
end
