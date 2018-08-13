require 'test_helper'

class CustomerserversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerserver = customerservers(:one)
  end

  test "should get index" do
    get customerservers_url
    assert_response :success
  end

  test "should get new" do
    get new_customerserver_url
    assert_response :success
  end

  test "should create customerserver" do
    assert_difference('Customerserver.count') do
      post customerservers_url, params: { customerserver: { customer: @customerserver.customer, customerservice: @customerserver.customerservice, customerserviceid: @customerserver.customerserviceid, deadline: @customerserver.deadline, our_server: @customerserver.our_server } }
    end

    assert_redirected_to customerserver_url(Customerserver.last)
  end

  test "should show customerserver" do
    get customerserver_url(@customerserver)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerserver_url(@customerserver)
    assert_response :success
  end

  test "should update customerserver" do
    patch customerserver_url(@customerserver), params: { customerserver: { customer: @customerserver.customer, customerservice: @customerserver.customerservice, customerserviceid: @customerserver.customerserviceid, deadline: @customerserver.deadline, our_server: @customerserver.our_server } }
    assert_redirected_to customerserver_url(@customerserver)
  end

  test "should destroy customerserver" do
    assert_difference('Customerserver.count', -1) do
      delete customerserver_url(@customerserver)
    end

    assert_redirected_to customerservers_url
  end
end
