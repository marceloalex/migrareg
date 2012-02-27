require 'test_helper'

class TeleoperationsControllerTest < ActionController::TestCase
  setup do
    @teleoperation = teleoperations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teleoperations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teleoperation" do
    assert_difference('Teleoperation.count') do
      post :create, teleoperation: @teleoperation.attributes
    end

    assert_redirected_to teleoperation_path(assigns(:teleoperation))
  end

  test "should show teleoperation" do
    get :show, id: @teleoperation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teleoperation
    assert_response :success
  end

  test "should update teleoperation" do
    put :update, id: @teleoperation, teleoperation: @teleoperation.attributes
    assert_redirected_to teleoperation_path(assigns(:teleoperation))
  end

  test "should destroy teleoperation" do
    assert_difference('Teleoperation.count', -1) do
      delete :destroy, id: @teleoperation
    end

    assert_redirected_to teleoperations_path
  end
end
