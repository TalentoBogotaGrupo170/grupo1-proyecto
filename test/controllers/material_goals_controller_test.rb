require 'test_helper'

class MaterialGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_goal = material_goals(:one)
  end

  test "should get index" do
    get material_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_material_goal_url
    assert_response :success
  end

  test "should create material_goal" do
    assert_difference('MaterialGoal.count') do
      post material_goals_url, params: { material_goal: { goal_id: @material_goal.goal_id, location: @material_goal.location, material_type_id: @material_goal.material_type_id } }
    end

    assert_redirected_to material_goal_url(MaterialGoal.last)
  end

  test "should show material_goal" do
    get material_goal_url(@material_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_goal_url(@material_goal)
    assert_response :success
  end

  test "should update material_goal" do
    patch material_goal_url(@material_goal), params: { material_goal: { goal_id: @material_goal.goal_id, location: @material_goal.location, material_type_id: @material_goal.material_type_id } }
    assert_redirected_to material_goal_url(@material_goal)
  end

  test "should destroy material_goal" do
    assert_difference('MaterialGoal.count', -1) do
      delete material_goal_url(@material_goal)
    end

    assert_redirected_to material_goals_url
  end
end
