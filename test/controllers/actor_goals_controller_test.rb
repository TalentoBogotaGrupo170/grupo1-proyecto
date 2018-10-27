require 'test_helper'

class ActorGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_goal = actor_goals(:one)
  end

  test "should get index" do
    get actor_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_goal_url
    assert_response :success
  end

  test "should create actor_goal" do
    assert_difference('ActorGoal.count') do
      post actor_goals_url, params: { actor_goal: { actor_id: @actor_goal.actor_id, actor_type_id: @actor_goal.actor_type_id, enddate: @actor_goal.enddate, goal_id: @actor_goal.goal_id, score: @actor_goal.score, startdate: @actor_goal.startdate, validity: @actor_goal.validity } }
    end

    assert_redirected_to actor_goal_url(ActorGoal.last)
  end

  test "should show actor_goal" do
    get actor_goal_url(@actor_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_goal_url(@actor_goal)
    assert_response :success
  end

  test "should update actor_goal" do
    patch actor_goal_url(@actor_goal), params: { actor_goal: { actor_id: @actor_goal.actor_id, actor_type_id: @actor_goal.actor_type_id, enddate: @actor_goal.enddate, goal_id: @actor_goal.goal_id, score: @actor_goal.score, startdate: @actor_goal.startdate, validity: @actor_goal.validity } }
    assert_redirected_to actor_goal_url(@actor_goal)
  end

  test "should destroy actor_goal" do
    assert_difference('ActorGoal.count', -1) do
      delete actor_goal_url(@actor_goal)
    end

    assert_redirected_to actor_goals_url
  end
end
