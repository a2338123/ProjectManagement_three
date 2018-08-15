class SessionsController < ApplicationController
 

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
	if user
	  log_in user
	  redirect_to home_url
	else
	  flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
	redirect_to login_url
  end
end
