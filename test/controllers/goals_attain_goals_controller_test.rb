require 'test_helper'

class GoalsAttainGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goals_attain_goal = goals_attain_goals(:one)
  end

  test "should get index" do
    get goals_attain_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_goals_attain_goal_url
    assert_response :success
  end

  test "should create goals_attain_goal" do
    assert_difference('GoalsAttainGoal.count') do
      post goals_attain_goals_url, params: { goals_attain_goal: { actor_id: @goals_attain_goal.actor_id, actor_type_id: @goals_attain_goal.actor_type_id, attainment: @goals_attain_goal.attainment, end_date: @goals_attain_goal.end_date, goal_id: @goals_attain_goal.goal_id, score: @goals_attain_goal.score, start_date: @goals_attain_goal.start_date, validity: @goals_attain_goal.validity } }
    end

    assert_redirected_to goals_attain_goal_url(GoalsAttainGoal.last)
  end

  test "should show goals_attain_goal" do
    get goals_attain_goal_url(@goals_attain_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_goals_attain_goal_url(@goals_attain_goal)
    assert_response :success
  end

  test "should update goals_attain_goal" do
    patch goals_attain_goal_url(@goals_attain_goal), params: { goals_attain_goal: { actor_id: @goals_attain_goal.actor_id, actor_type_id: @goals_attain_goal.actor_type_id, attainment: @goals_attain_goal.attainment, end_date: @goals_attain_goal.end_date, goal_id: @goals_attain_goal.goal_id, score: @goals_attain_goal.score, start_date: @goals_attain_goal.start_date, validity: @goals_attain_goal.validity } }
    assert_redirected_to goals_attain_goal_url(@goals_attain_goal)
  end

  test "should destroy goals_attain_goal" do
    assert_difference('GoalsAttainGoal.count', -1) do
      delete goals_attain_goal_url(@goals_attain_goal)
    end

    assert_redirected_to goals_attain_goals_url
  end
end
