require 'test_helper'

class ActorAttainGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_attain_goal = actor_attain_goals(:one)
  end

  test "should get index" do
    get actor_attain_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_attain_goal_url
    assert_response :success
  end

  test "should create actor_attain_goal" do
    assert_difference('ActorAttainGoal.count') do
      post actor_attain_goals_url, params: { actor_attain_goal: { actor_goal_id: @actor_attain_goal.actor_goal_id, actor_id: @actor_attain_goal.actor_id, actor_type_id: @actor_attain_goal.actor_type_id, attainment: @actor_attain_goal.attainment, enddate: @actor_attain_goal.enddate, goal_id: @actor_attain_goal.goal_id, score: @actor_attain_goal.score, startdate: @actor_attain_goal.startdate, validity: @actor_attain_goal.validity } }
    end

    assert_redirected_to actor_attain_goal_url(ActorAttainGoal.last)
  end

  test "should show actor_attain_goal" do
    get actor_attain_goal_url(@actor_attain_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_attain_goal_url(@actor_attain_goal)
    assert_response :success
  end

  test "should update actor_attain_goal" do
    patch actor_attain_goal_url(@actor_attain_goal), params: { actor_attain_goal: { actor_goal_id: @actor_attain_goal.actor_goal_id, actor_id: @actor_attain_goal.actor_id, actor_type_id: @actor_attain_goal.actor_type_id, attainment: @actor_attain_goal.attainment, enddate: @actor_attain_goal.enddate, goal_id: @actor_attain_goal.goal_id, score: @actor_attain_goal.score, startdate: @actor_attain_goal.startdate, validity: @actor_attain_goal.validity } }
    assert_redirected_to actor_attain_goal_url(@actor_attain_goal)
  end

  test "should destroy actor_attain_goal" do
    assert_difference('ActorAttainGoal.count', -1) do
      delete actor_attain_goal_url(@actor_attain_goal)
    end

    assert_redirected_to actor_attain_goals_url
  end
end
