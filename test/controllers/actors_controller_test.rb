require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get actors_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_url
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post actors_url, params: { actor: { actor_type_id: @actor.actor_type_id, birthdate: @actor.birthdate, degree_id: @actor.degree_id, firstname: @actor.firstname, ident: @actor.ident, ident_type_id: @actor.ident_type_id, secondname: @actor.secondname, secsurname: @actor.secsurname, surname: @actor.surname } }
    end

    assert_redirected_to actor_url(Actor.last)
  end

  test "should show actor" do
    get actor_url(@actor)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_url(@actor)
    assert_response :success
  end

  test "should update actor" do
    patch actor_url(@actor), params: { actor: { actor_type_id: @actor.actor_type_id, birthdate: @actor.birthdate, degree_id: @actor.degree_id, firstname: @actor.firstname, ident: @actor.ident, ident_type_id: @actor.ident_type_id, secondname: @actor.secondname, secsurname: @actor.secsurname, surname: @actor.surname } }
    assert_redirected_to actor_url(@actor)
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete actor_url(@actor)
    end

    assert_redirected_to actors_url
  end
end
