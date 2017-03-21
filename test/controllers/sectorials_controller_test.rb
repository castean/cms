require 'test_helper'

class SectorialsControllerTest < ActionController::TestCase
  setup do
    @sectorial = sectorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sectorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sectorial" do
    assert_difference('Sectorial.count') do
      post :create, sectorial: { ip_address: @sectorial.ip_address, limite: @sectorial.limite, nombre: @sectorial.nombre }
    end

    assert_redirected_to sectorial_path(assigns(:sectorial))
  end

  test "should show sectorial" do
    get :show, id: @sectorial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sectorial
    assert_response :success
  end

  test "should update sectorial" do
    patch :update, id: @sectorial, sectorial: { ip_address: @sectorial.ip_address, limite: @sectorial.limite, nombre: @sectorial.nombre }
    assert_redirected_to sectorial_path(assigns(:sectorial))
  end

  test "should destroy sectorial" do
    assert_difference('Sectorial.count', -1) do
      delete :destroy, id: @sectorial
    end

    assert_redirected_to sectorials_path
  end
end
