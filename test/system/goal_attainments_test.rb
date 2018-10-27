require "application_system_test_case"

class GoalAttainmentsTest < ApplicationSystemTestCase
  setup do
    @goal_attainment = goal_attainments(:one)
  end

  test "visiting the index" do
    visit goal_attainments_url
    assert_selector "h1", text: "Goal Attainments"
  end

  test "creating a Goal attainment" do
    visit goal_attainments_url
    click_on "New Goal Attainment"

    fill_in "Actor Type", with: @goal_attainment.actor_type_id
    fill_in "Attainment", with: @goal_attainment.attainment
    fill_in "Degree", with: @goal_attainment.degree_id
    fill_in "Enddate", with: @goal_attainment.enddate
    fill_in "Fulfillment", with: @goal_attainment.fulfillment
    fill_in "Goal", with: @goal_attainment.goal_id
    fill_in "Name", with: @goal_attainment.name
    fill_in "Startdate", with: @goal_attainment.startdate
    fill_in "Validity", with: @goal_attainment.validity
    fill_in "Weight", with: @goal_attainment.weight
    click_on "Create Goal attainment"

    assert_text "Goal attainment was successfully created"
    click_on "Back"
  end

  test "updating a Goal attainment" do
    visit goal_attainments_url
    click_on "Edit", match: :first

    fill_in "Actor Type", with: @goal_attainment.actor_type_id
    fill_in "Attainment", with: @goal_attainment.attainment
    fill_in "Degree", with: @goal_attainment.degree_id
    fill_in "Enddate", with: @goal_attainment.enddate
    fill_in "Fulfillment", with: @goal_attainment.fulfillment
    fill_in "Goal", with: @goal_attainment.goal_id
    fill_in "Name", with: @goal_attainment.name
    fill_in "Startdate", with: @goal_attainment.startdate
    fill_in "Validity", with: @goal_attainment.validity
    fill_in "Weight", with: @goal_attainment.weight
    click_on "Update Goal attainment"

    assert_text "Goal attainment was successfully updated"
    click_on "Back"
  end

  test "destroying a Goal attainment" do
    visit goal_attainments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goal attainment was successfully destroyed"
  end
end
