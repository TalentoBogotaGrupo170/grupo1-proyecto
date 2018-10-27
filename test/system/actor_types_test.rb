require "application_system_test_case"

class ActorTypesTest < ApplicationSystemTestCase
  setup do
    @actor_type = actor_types(:one)
  end

  test "visiting the index" do
    visit actor_types_url
    assert_selector "h1", text: "Actor Types"
  end

  test "creating a Actor type" do
    visit actor_types_url
    click_on "New Actor Type"

    fill_in "Name", with: @actor_type.name
    click_on "Create Actor type"

    assert_text "Actor type was successfully created"
    click_on "Back"
  end

  test "updating a Actor type" do
    visit actor_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @actor_type.name
    click_on "Update Actor type"

    assert_text "Actor type was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor type" do
    visit actor_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor type was successfully destroyed"
  end
end
