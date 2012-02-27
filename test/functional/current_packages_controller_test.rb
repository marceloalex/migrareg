require 'test_helper'

class CurrentPackagesControllerTest < ActionController::TestCase
  setup do
    @current_package = current_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_package" do
    assert_difference('CurrentPackage.count') do
      post :create, current_package: @current_package.attributes
    end

    assert_redirected_to current_package_path(assigns(:current_package))
  end

  test "should show current_package" do
    get :show, id: @current_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_package
    assert_response :success
  end

  test "should update current_package" do
    put :update, id: @current_package, current_package: @current_package.attributes
    assert_redirected_to current_package_path(assigns(:current_package))
  end

  test "should destroy current_package" do
    assert_difference('CurrentPackage.count', -1) do
      delete :destroy, id: @current_package
    end

    assert_redirected_to current_packages_path
  end
end
