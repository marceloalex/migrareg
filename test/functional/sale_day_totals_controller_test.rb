require 'test_helper'

class SaleDayTotalsControllerTest < ActionController::TestCase
  setup do
    @sale_day_total = sale_day_totals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_day_totals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_day_total" do
    assert_difference('SaleDayTotal.count') do
      post :create, sale_day_total: @sale_day_total.attributes
    end

    assert_redirected_to sale_day_total_path(assigns(:sale_day_total))
  end

  test "should show sale_day_total" do
    get :show, id: @sale_day_total
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_day_total
    assert_response :success
  end

  test "should update sale_day_total" do
    put :update, id: @sale_day_total, sale_day_total: @sale_day_total.attributes
    assert_redirected_to sale_day_total_path(assigns(:sale_day_total))
  end

  test "should destroy sale_day_total" do
    assert_difference('SaleDayTotal.count', -1) do
      delete :destroy, id: @sale_day_total
    end

    assert_redirected_to sale_day_totals_path
  end
end
