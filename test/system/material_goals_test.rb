require "application_system_test_case"

class MaterialGoalsTest < ApplicationSystemTestCase
  setup do
    @material_goal = material_goals(:one)
  end

  test "visiting the index" do
    visit material_goals_url
    assert_selector "h1", text: "Material Goals"
  end

  test "creating a Material goal" do
    visit material_goals_url
    click_on "New Material Goal"

    fill_in "Goal", with: @material_goal.goal_id
    fill_in "Location", with: @material_goal.location
    fill_in "Material Type", with: @material_goal.material_type_id
    click_on "Create Material goal"

    assert_text "Material goal was successfully created"
    click_on "Back"
  end

  test "updating a Material goal" do
    visit material_goals_url
    click_on "Edit", match: :first

    fill_in "Goal", with: @material_goal.goal_id
    fill_in "Location", with: @material_goal.location
    fill_in "Material Type", with: @material_goal.material_type_id
    click_on "Update Material goal"

    assert_text "Material goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Material goal" do
    visit material_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material goal was successfully destroyed"
  end
end
