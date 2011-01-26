class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def require_user_or_employee!
    unless user_signed_in? or employee_signed_in?
      redirect_to root_path, :alert => "Permission denied"
    end
  end
end
