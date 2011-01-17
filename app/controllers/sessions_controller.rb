class SessionsController < Devise::SessionsController

  def create
    logger.info "Attempt to sign in by #{ params[:user][:email] }"
    super
  end

  def destroy
    logger.info "#{ current_user.email } signed out"
    super
  end
end
