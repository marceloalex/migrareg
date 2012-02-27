require 'test_helper'

class NumberCallsControllerTest < ActionController::TestCase
  setup do
    @number_call = number_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_call" do
    assert_difference('NumberCall.count') do
      post :create, number_call: @number_call.attributes
    end

    assert_redirected_to number_call_path(assigns(:number_call))
  end

  test "should show number_call" do
    get :show, id: @number_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_call
    assert_response :success
  end

  test "should update number_call" do
    put :update, id: @number_call, number_call: @number_call.attributes
    assert_redirected_to number_call_path(assigns(:number_call))
  end

  test "should destroy number_call" do
    assert_difference('NumberCall.count', -1) do
      delete :destroy, id: @number_call
    end

    assert_redirected_to number_calls_path
  end
end
