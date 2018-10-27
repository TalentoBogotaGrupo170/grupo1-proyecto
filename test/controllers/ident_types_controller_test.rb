require 'test_helper'

class IdentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ident_type = ident_types(:one)
  end

  test "should get index" do
    get ident_types_url
    assert_response :success
  end

  test "should get new" do
    get new_ident_type_url
    assert_response :success
  end

  test "should create ident_type" do
    assert_difference('IdentType.count') do
      post ident_types_url, params: { ident_type: { name: @ident_type.name } }
    end

    assert_redirected_to ident_type_url(IdentType.last)
  end

  test "should show ident_type" do
    get ident_type_url(@ident_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_ident_type_url(@ident_type)
    assert_response :success
  end

  test "should update ident_type" do
    patch ident_type_url(@ident_type), params: { ident_type: { name: @ident_type.name } }
    assert_redirected_to ident_type_url(@ident_type)
  end

  test "should destroy ident_type" do
    assert_difference('IdentType.count', -1) do
      delete ident_type_url(@ident_type)
    end

    assert_redirected_to ident_types_url
  end
end
