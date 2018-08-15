class StaticPagesController < ApplicationController
  before_action :logged_in_user
  def home
  end

  def customers
  end

  def cloudservices
  end

  def customerservices
  end

  def projects
  end

  private

  def logged_in_user
    unless logged_in?
	flash[:danger] = "Please log in."
    redirect_to login_url
    end
  end
end
