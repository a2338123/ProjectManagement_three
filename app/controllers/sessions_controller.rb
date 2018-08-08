class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
	if user
	  log_in user
	  redirect_to home_path
	else
	  flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end
end
