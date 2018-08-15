class UsersController < ApplicationController
# before_action :logged_in_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
	if @user.save
	  redirect_to home_path
	else
	  render 'new'
      flash[:danger] = 'Invalid name/password combination'
    end
  end

#  def edit
#    @user = User.find(params[:id])

#  def destroy
#    User.find(params[:id]).destroy
#  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

  #前置过滤器

  # 确保用户已登录
  
#  def logged_in_user
#    unless logged_in?
#	  flash[:danger] = "Please log in."
#	  redirect_to login_path
#	end
#  end
end
