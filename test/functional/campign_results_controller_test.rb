require 'test_helper'

class CampignResultsControllerTest < ActionController::TestCase
  setup do
    @campign_result = campign_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campign_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campign_result" do
    assert_difference('CampignResult.count') do
      post :create, campign_result: { I_Amount: @campign_result.I_Amount, RO_Date: @campign_result.RO_Date, W_Amount: @campign_result.W_Amount, address: @campign_result.address, c_amount: @campign_result.c_amount, campaign: @campign_result.campaign, labor_amount: @campign_result.labor_amount, make: @campign_result.make, misc_amount: @campign_result.misc_amount, model: @campign_result.model, name: @campign_result.name, part_amount: @campign_result.part_amount, ro_amount: @campign_result.ro_amount, vin: @campign_result.vin, year: @campign_result.year }
    end

    assert_redirected_to campign_result_path(assigns(:campign_result))
  end

  test "should show campign_result" do
    get :show, id: @campign_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campign_result
    assert_response :success
  end

  test "should update campign_result" do
    put :update, id: @campign_result, campign_result: { I_Amount: @campign_result.I_Amount, RO_Date: @campign_result.RO_Date, W_Amount: @campign_result.W_Amount, address: @campign_result.address, c_amount: @campign_result.c_amount, campaign: @campign_result.campaign, labor_amount: @campign_result.labor_amount, make: @campign_result.make, misc_amount: @campign_result.misc_amount, model: @campign_result.model, name: @campign_result.name, part_amount: @campign_result.part_amount, ro_amount: @campign_result.ro_amount, vin: @campign_result.vin, year: @campign_result.year }
    assert_redirected_to campign_result_path(assigns(:campign_result))
  end

  test "should destroy campign_result" do
    assert_difference('CampignResult.count', -1) do
      delete :destroy, id: @campign_result
    end

    assert_redirected_to campign_results_path
  end
end
