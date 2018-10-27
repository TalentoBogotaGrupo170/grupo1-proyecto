require "application_system_test_case"

class GoalsTest < ApplicationSystemTestCase
  setup do
    @goal = goals(:one)
  end

  test "visiting the index" do
    visit goals_url
    assert_selector "h1", text: "Goals"
  end

  test "creating a Goal" do
    visit goals_url
    click_on "New Goal"

    fill_in "Actor Type", with: @goal.actor_type_id
    fill_in "Degree", with: @goal.degree_id
    fill_in "Enddate", with: @goal.enddate
    fill_in "Fulfillment", with: @goal.fulfillment
    fill_in "Name", with: @goal.name
    fill_in "Startdate", with: @goal.startdate
    fill_in "Validity", with: @goal.validity
    fill_in "Weight", with: @goal.weight
    click_on "Create Goal"

    assert_text "Goal was successfully created"
    click_on "Back"
  end

  test "updating a Goal" do
    visit goals_url
    click_on "Edit", match: :first

    fill_in "Actor Type", with: @goal.actor_type_id
    fill_in "Degree", with: @goal.degree_id
    fill_in "Enddate", with: @goal.enddate
    fill_in "Fulfillment", with: @goal.fulfillment
    fill_in "Name", with: @goal.name
    fill_in "Startdate", with: @goal.startdate
    fill_in "Validity", with: @goal.validity
    fill_in "Weight", with: @goal.weight
    click_on "Update Goal"

    assert_text "Goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Goal" do
    visit goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goal was successfully destroyed"
  end
end
