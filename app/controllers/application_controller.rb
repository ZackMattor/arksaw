class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :layout_by_resource
  before_filter :authenticate_user!

  def layout_by_resource
    "application"
  end

  def authenticate_active_admin_user!
    authenticate_user! 
    unless current_user.role? :admin
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path 
    end
  end
  
end
