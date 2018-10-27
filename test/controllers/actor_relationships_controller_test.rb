require 'test_helper'

class ActorRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_relationship = actor_relationships(:one)
  end

  test "should get index" do
    get actor_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_relationship_url
    assert_response :success
  end

  test "should create actor_relationship" do
    assert_difference('ActorRelationship.count') do
      post actor_relationships_url, params: { actor_relationship: { actor2: @actor_relationship.actor2, actor_id: @actor_relationship.actor_id } }
    end

    assert_redirected_to actor_relationship_url(ActorRelationship.last)
  end

  test "should show actor_relationship" do
    get actor_relationship_url(@actor_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_relationship_url(@actor_relationship)
    assert_response :success
  end

  test "should update actor_relationship" do
    patch actor_relationship_url(@actor_relationship), params: { actor_relationship: { actor2: @actor_relationship.actor2, actor_id: @actor_relationship.actor_id } }
    assert_redirected_to actor_relationship_url(@actor_relationship)
  end

  test "should destroy actor_relationship" do
    assert_difference('ActorRelationship.count', -1) do
      delete actor_relationship_url(@actor_relationship)
    end

    assert_redirected_to actor_relationships_url
  end
end
