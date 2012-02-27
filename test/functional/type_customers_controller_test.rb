require 'test_helper'

class TypeCustomersControllerTest < ActionController::TestCase
  setup do
    @type_customer = type_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_customer" do
    assert_difference('TypeCustomer.count') do
      post :create, type_customer: @type_customer.attributes
    end

    assert_redirected_to type_customer_path(assigns(:type_customer))
  end

  test "should show type_customer" do
    get :show, id: @type_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_customer
    assert_response :success
  end

  test "should update type_customer" do
    put :update, id: @type_customer, type_customer: @type_customer.attributes
    assert_redirected_to type_customer_path(assigns(:type_customer))
  end

  test "should destroy type_customer" do
    assert_difference('TypeCustomer.count', -1) do
      delete :destroy, id: @type_customer
    end

    assert_redirected_to type_customers_path
  end
end
