require 'test_helper'

class CampaignMembersControllerTest < ActionController::TestCase
  setup do
    @campaign_member = campaign_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign_member" do
    assert_difference('CampaignMember.count') do
      post :create, campaign_member: { address: @campaign_member.address, latitude: @campaign_member.latitude, longitude: @campaign_member.longitude, make: @campaign_member.make, model: @campaign_member.model, name: @campaign_member.name, odometer: @campaign_member.odometer, radius: @campaign_member.radius, vin: @campaign_member.vin, year: @campaign_member.year }
    end

    assert_redirected_to campaign_member_path(assigns(:campaign_member))
  end

  test "should show campaign_member" do
    get :show, id: @campaign_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaign_member
    assert_response :success
  end

  test "should update campaign_member" do
    put :update, id: @campaign_member, campaign_member: { address: @campaign_member.address, latitude: @campaign_member.latitude, longitude: @campaign_member.longitude, make: @campaign_member.make, model: @campaign_member.model, name: @campaign_member.name, odometer: @campaign_member.odometer, radius: @campaign_member.radius, vin: @campaign_member.vin, year: @campaign_member.year }
    assert_redirected_to campaign_member_path(assigns(:campaign_member))
  end

  test "should destroy campaign_member" do
    assert_difference('CampaignMember.count', -1) do
      delete :destroy, id: @campaign_member
    end

    assert_redirected_to campaign_members_path
  end
end
