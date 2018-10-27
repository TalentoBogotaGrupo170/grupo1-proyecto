require 'test_helper'

class GoalAttainmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_attainment = goal_attainments(:one)
  end

  test "should get index" do
    get goal_attainments_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_attainment_url
    assert_response :success
  end

  test "should create goal_attainment" do
    assert_difference('GoalAttainment.count') do
      post goal_attainments_url, params: { goal_attainment: { actor_type_id: @goal_attainment.actor_type_id, attainment: @goal_attainment.attainment, degree_id: @goal_attainment.degree_id, enddate: @goal_attainment.enddate, fulfillment: @goal_attainment.fulfillment, goal_id: @goal_attainment.goal_id, name: @goal_attainment.name, startdate: @goal_attainment.startdate, validity: @goal_attainment.validity, weight: @goal_attainment.weight } }
    end

    assert_redirected_to goal_attainment_url(GoalAttainment.last)
  end

  test "should show goal_attainment" do
    get goal_attainment_url(@goal_attainment)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_attainment_url(@goal_attainment)
    assert_response :success
  end

  test "should update goal_attainment" do
    patch goal_attainment_url(@goal_attainment), params: { goal_attainment: { actor_type_id: @goal_attainment.actor_type_id, attainment: @goal_attainment.attainment, degree_id: @goal_attainment.degree_id, enddate: @goal_attainment.enddate, fulfillment: @goal_attainment.fulfillment, goal_id: @goal_attainment.goal_id, name: @goal_attainment.name, startdate: @goal_attainment.startdate, validity: @goal_attainment.validity, weight: @goal_attainment.weight } }
    assert_redirected_to goal_attainment_url(@goal_attainment)
  end

  test "should destroy goal_attainment" do
    assert_difference('GoalAttainment.count', -1) do
      delete goal_attainment_url(@goal_attainment)
    end

    assert_redirected_to goal_attainments_url
  end
end
