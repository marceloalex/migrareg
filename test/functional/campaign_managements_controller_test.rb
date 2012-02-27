require 'test_helper'

class CampaignManagementsControllerTest < ActionController::TestCase
  setup do
    @campaign_management = campaign_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign_management" do
    assert_difference('CampaignManagement.count') do
      post :create, campaign_management: @campaign_management.attributes
    end

    assert_redirected_to campaign_management_path(assigns(:campaign_management))
  end

  test "should show campaign_management" do
    get :show, id: @campaign_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaign_management
    assert_response :success
  end

  test "should update campaign_management" do
    put :update, id: @campaign_management, campaign_management: @campaign_management.attributes
    assert_redirected_to campaign_management_path(assigns(:campaign_management))
  end

  test "should destroy campaign_management" do
    assert_difference('CampaignManagement.count', -1) do
      delete :destroy, id: @campaign_management
    end

    assert_redirected_to campaign_managements_path
  end
end
