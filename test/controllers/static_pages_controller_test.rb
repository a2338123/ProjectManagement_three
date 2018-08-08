require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_path
    assert_response :success
  end

  test "should get customer" do
    get customer_path
    assert_response :success
  end

  test "should get cloudservice" do
    get cloudservice_path
    assert_response :success
  end

  test "should get customerservice" do
    get customerservice_path
    assert_response :success
  end

  test "should get project" do
    get project_path
    assert_response :success
  end

end
