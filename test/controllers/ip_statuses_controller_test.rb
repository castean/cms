require 'test_helper'

class IpStatusesControllerTest < ActionController::TestCase
  setup do
    @ip_status = ip_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_status" do
    assert_difference('IpStatus.count') do
      post :create, ip_status: { status: @ip_status.status }
    end

    assert_redirected_to ip_status_path(assigns(:ip_status))
  end

  test "should show ip_status" do
    get :show, id: @ip_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip_status
    assert_response :success
  end

  test "should update ip_status" do
    patch :update, id: @ip_status, ip_status: { status: @ip_status.status }
    assert_redirected_to ip_status_path(assigns(:ip_status))
  end

  test "should destroy ip_status" do
    assert_difference('IpStatus.count', -1) do
      delete :destroy, id: @ip_status
    end

    assert_redirected_to ip_statuses_path
  end
end
