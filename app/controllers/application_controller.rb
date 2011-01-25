class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def require_admin
    redirect_to :back, :notice => "You must be an administrator to access this page" unless current_user.try :is_admin?
  end
end
