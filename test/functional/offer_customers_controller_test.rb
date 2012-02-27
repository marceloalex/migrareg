require 'test_helper'

class OfferCustomersControllerTest < ActionController::TestCase
  setup do
    @offer_customer = offer_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_customer" do
    assert_difference('OfferCustomer.count') do
      post :create, offer_customer: @offer_customer.attributes
    end

    assert_redirected_to offer_customer_path(assigns(:offer_customer))
  end

  test "should show offer_customer" do
    get :show, id: @offer_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer_customer
    assert_response :success
  end

  test "should update offer_customer" do
    put :update, id: @offer_customer, offer_customer: @offer_customer.attributes
    assert_redirected_to offer_customer_path(assigns(:offer_customer))
  end

  test "should destroy offer_customer" do
    assert_difference('OfferCustomer.count', -1) do
      delete :destroy, id: @offer_customer
    end

    assert_redirected_to offer_customers_path
  end
end
