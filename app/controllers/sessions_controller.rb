class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.where(email: params[:session][:email]).first
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user_path
    else
      redirect_to root_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end