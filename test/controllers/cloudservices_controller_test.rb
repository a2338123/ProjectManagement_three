require 'test_helper'

class CloudservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloudservice = cloudservices(:one)
  end

  test "should get index" do
    get cloudservices_url
    assert_response :success
  end

  test "should get new" do
    get new_cloudservice_url
    assert_response :success
  end

  test "should create cloudservice" do
    assert_difference('Cloudservice.count') do
      post cloudservices_url, params: { cloudservice: { cloudserviceid: @cloudservice.cloudserviceid, expired_at: @cloudservice.expired_at, vendor: @cloudservice.vendor } }
    end

    assert_redirected_to cloudservice_url(Cloudservice.last)
  end

  test "should show cloudservice" do
    get cloudservice_url(@cloudservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloudservice_url(@cloudservice)
    assert_response :success
  end

  test "should update cloudservice" do
    patch cloudservice_url(@cloudservice), params: { cloudservice: { cloudserviceid: @cloudservice.cloudserviceid, expired_at: @cloudservice.expired_at, vendor: @cloudservice.vendor } }
    assert_redirected_to cloudservice_url(@cloudservice)
  end

  test "should destroy cloudservice" do
    assert_difference('Cloudservice.count', -1) do
      delete cloudservice_url(@cloudservice)
    end

    assert_redirected_to cloudservices_url
  end
end
