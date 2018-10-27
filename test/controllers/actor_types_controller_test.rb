require 'test_helper'

class ActorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_type = actor_types(:one)
  end

  test "should get index" do
    get actor_types_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_type_url
    assert_response :success
  end

  test "should create actor_type" do
    assert_difference('ActorType.count') do
      post actor_types_url, params: { actor_type: { name: @actor_type.name } }
    end

    assert_redirected_to actor_type_url(ActorType.last)
  end

  test "should show actor_type" do
    get actor_type_url(@actor_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_type_url(@actor_type)
    assert_response :success
  end

  test "should update actor_type" do
    patch actor_type_url(@actor_type), params: { actor_type: { name: @actor_type.name } }
    assert_redirected_to actor_type_url(@actor_type)
  end

  test "should destroy actor_type" do
    assert_difference('ActorType.count', -1) do
      delete actor_type_url(@actor_type)
    end

    assert_redirected_to actor_types_url
  end
end
