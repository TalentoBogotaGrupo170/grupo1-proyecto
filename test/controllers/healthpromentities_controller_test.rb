require 'test_helper'

class HealthpromentitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @healthpromentity = healthpromentities(:one)
  end

  test "should get index" do
    get healthpromentities_url
    assert_response :success
  end

  test "should get new" do
    get new_healthpromentity_url
    assert_response :success
  end

  test "should create healthpromentity" do
    assert_difference('Healthpromentity.count') do
      post healthpromentities_url, params: { healthpromentity: { link: @healthpromentity.link, mail: @healthpromentity.mail, name: @healthpromentity.name } }
    end

    assert_redirected_to healthpromentity_url(Healthpromentity.last)
  end

  test "should show healthpromentity" do
    get healthpromentity_url(@healthpromentity)
    assert_response :success
  end

  test "should get edit" do
    get edit_healthpromentity_url(@healthpromentity)
    assert_response :success
  end

  test "should update healthpromentity" do
    patch healthpromentity_url(@healthpromentity), params: { healthpromentity: { link: @healthpromentity.link, mail: @healthpromentity.mail, name: @healthpromentity.name } }
    assert_redirected_to healthpromentity_url(@healthpromentity)
  end

  test "should destroy healthpromentity" do
    assert_difference('Healthpromentity.count', -1) do
      delete healthpromentity_url(@healthpromentity)
    end

    assert_redirected_to healthpromentities_url
  end
end
