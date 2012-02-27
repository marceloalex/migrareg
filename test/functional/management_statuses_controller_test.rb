require 'test_helper'

class ManagementStatusesControllerTest < ActionController::TestCase
  setup do
    @management_status = management_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:management_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create management_status" do
    assert_difference('ManagementStatus.count') do
      post :create, management_status: @management_status.attributes
    end

    assert_redirected_to management_status_path(assigns(:management_status))
  end

  test "should show management_status" do
    get :show, id: @management_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @management_status
    assert_response :success
  end

  test "should update management_status" do
    put :update, id: @management_status, management_status: @management_status.attributes
    assert_redirected_to management_status_path(assigns(:management_status))
  end

  test "should destroy management_status" do
    assert_difference('ManagementStatus.count', -1) do
      delete :destroy, id: @management_status
    end

    assert_redirected_to management_statuses_path
  end
end
