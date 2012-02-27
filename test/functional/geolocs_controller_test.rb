require 'test_helper'

class GeolocsControllerTest < ActionController::TestCase
  setup do
    @geoloc = geolocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geolocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geoloc" do
    assert_difference('Geoloc.count') do
      post :create, geoloc: @geoloc.attributes
    end

    assert_redirected_to geoloc_path(assigns(:geoloc))
  end

  test "should show geoloc" do
    get :show, id: @geoloc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geoloc
    assert_response :success
  end

  test "should update geoloc" do
    put :update, id: @geoloc, geoloc: @geoloc.attributes
    assert_redirected_to geoloc_path(assigns(:geoloc))
  end

  test "should destroy geoloc" do
    assert_difference('Geoloc.count', -1) do
      delete :destroy, id: @geoloc
    end

    assert_redirected_to geolocs_path
  end
end
