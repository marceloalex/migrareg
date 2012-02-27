require 'test_helper'

class AuxiliarManagementsControllerTest < ActionController::TestCase
  setup do
    @auxiliar_management = auxiliar_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auxiliar_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auxiliar_management" do
    assert_difference('AuxiliarManagement.count') do
      post :create, auxiliar_management: @auxiliar_management.attributes
    end

    assert_redirected_to auxiliar_management_path(assigns(:auxiliar_management))
  end

  test "should show auxiliar_management" do
    get :show, id: @auxiliar_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auxiliar_management
    assert_response :success
  end

  test "should update auxiliar_management" do
    put :update, id: @auxiliar_management, auxiliar_management: @auxiliar_management.attributes
    assert_redirected_to auxiliar_management_path(assigns(:auxiliar_management))
  end

  test "should destroy auxiliar_management" do
    assert_difference('AuxiliarManagement.count', -1) do
      delete :destroy, id: @auxiliar_management
    end

    assert_redirected_to auxiliar_managements_path
  end
end
