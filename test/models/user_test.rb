require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "admin", password: "admin", password_confirmation: "admin")
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 3
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 3
  end
end
