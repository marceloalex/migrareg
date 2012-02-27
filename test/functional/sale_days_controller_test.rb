require 'test_helper'

class SaleDaysControllerTest < ActionController::TestCase
  setup do
    @sale_day = sale_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_day" do
    assert_difference('SaleDay.count') do
      post :create, sale_day: @sale_day.attributes
    end

    assert_redirected_to sale_day_path(assigns(:sale_day))
  end

  test "should show sale_day" do
    get :show, id: @sale_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_day
    assert_response :success
  end

  test "should update sale_day" do
    put :update, id: @sale_day, sale_day: @sale_day.attributes
    assert_redirected_to sale_day_path(assigns(:sale_day))
  end

  test "should destroy sale_day" do
    assert_difference('SaleDay.count', -1) do
      delete :destroy, id: @sale_day
    end

    assert_redirected_to sale_days_path
  end
end
