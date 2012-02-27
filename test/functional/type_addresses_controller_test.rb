require 'test_helper'

class TypeAddressesControllerTest < ActionController::TestCase
  setup do
    @type_address = type_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_address" do
    assert_difference('TypeAddress.count') do
      post :create, type_address: @type_address.attributes
    end

    assert_redirected_to type_address_path(assigns(:type_address))
  end

  test "should show type_address" do
    get :show, id: @type_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_address
    assert_response :success
  end

  test "should update type_address" do
    put :update, id: @type_address, type_address: @type_address.attributes
    assert_redirected_to type_address_path(assigns(:type_address))
  end

  test "should destroy type_address" do
    assert_difference('TypeAddress.count', -1) do
      delete :destroy, id: @type_address
    end

    assert_redirected_to type_addresses_path
  end
end
