require 'test_helper'

class DayManagementsControllerTest < ActionController::TestCase
  setup do
    @day_management = day_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_management" do
    assert_difference('DayManagement.count') do
      post :create, day_management: @day_management.attributes
    end

    assert_redirected_to day_management_path(assigns(:day_management))
  end

  test "should show day_management" do
    get :show, id: @day_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_management
    assert_response :success
  end

  test "should update day_management" do
    put :update, id: @day_management, day_management: @day_management.attributes
    assert_redirected_to day_management_path(assigns(:day_management))
  end

  test "should destroy day_management" do
    assert_difference('DayManagement.count', -1) do
      delete :destroy, id: @day_management
    end

    assert_redirected_to day_managements_path
  end
end
