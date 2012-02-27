require 'test_helper'

class TemporalManagementsControllerTest < ActionController::TestCase
  setup do
    @temporal_management = temporal_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temporal_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temporal_management" do
    assert_difference('TemporalManagement.count') do
      post :create, temporal_management: @temporal_management.attributes
    end

    assert_redirected_to temporal_management_path(assigns(:temporal_management))
  end

  test "should show temporal_management" do
    get :show, id: @temporal_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temporal_management
    assert_response :success
  end

  test "should update temporal_management" do
    put :update, id: @temporal_management, temporal_management: @temporal_management.attributes
    assert_redirected_to temporal_management_path(assigns(:temporal_management))
  end

  test "should destroy temporal_management" do
    assert_difference('TemporalManagement.count', -1) do
      delete :destroy, id: @temporal_management
    end

    assert_redirected_to temporal_managements_path
  end
end
