class SessionsController < ApplicationController
  
  def new
    if logged_in?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    logger.debug params
    log_out
    redirect_to root_url
  end
end