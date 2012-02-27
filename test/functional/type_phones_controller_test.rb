require 'test_helper'

class TypePhonesControllerTest < ActionController::TestCase
  setup do
    @type_phone = type_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_phone" do
    assert_difference('TypePhone.count') do
      post :create, type_phone: @type_phone.attributes
    end

    assert_redirected_to type_phone_path(assigns(:type_phone))
  end

  test "should show type_phone" do
    get :show, id: @type_phone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_phone
    assert_response :success
  end

  test "should update type_phone" do
    put :update, id: @type_phone, type_phone: @type_phone.attributes
    assert_redirected_to type_phone_path(assigns(:type_phone))
  end

  test "should destroy type_phone" do
    assert_difference('TypePhone.count', -1) do
      delete :destroy, id: @type_phone
    end

    assert_redirected_to type_phones_path
  end
end
