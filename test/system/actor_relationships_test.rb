require "application_system_test_case"

class ActorRelationshipsTest < ApplicationSystemTestCase
  setup do
    @actor_relationship = actor_relationships(:one)
  end

  test "visiting the index" do
    visit actor_relationships_url
    assert_selector "h1", text: "Actor Relationships"
  end

  test "creating a Actor relationship" do
    visit actor_relationships_url
    click_on "New Actor Relationship"

    fill_in "Actor2", with: @actor_relationship.actor2
    fill_in "Actor", with: @actor_relationship.actor_id
    click_on "Create Actor relationship"

    assert_text "Actor relationship was successfully created"
    click_on "Back"
  end

  test "updating a Actor relationship" do
    visit actor_relationships_url
    click_on "Edit", match: :first

    fill_in "Actor2", with: @actor_relationship.actor2
    fill_in "Actor", with: @actor_relationship.actor_id
    click_on "Update Actor relationship"

    assert_text "Actor relationship was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor relationship" do
    visit actor_relationships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor relationship was successfully destroyed"
  end
end
