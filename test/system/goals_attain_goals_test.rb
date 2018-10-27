require "application_system_test_case"

class GoalsAttainGoalsTest < ApplicationSystemTestCase
  setup do
    @goals_attain_goal = goals_attain_goals(:one)
  end

  test "visiting the index" do
    visit goals_attain_goals_url
    assert_selector "h1", text: "Goals Attain Goals"
  end

  test "creating a Goals attain goal" do
    visit goals_attain_goals_url
    click_on "New Goals Attain Goal"

    fill_in "Actor", with: @goals_attain_goal.actor_id
    fill_in "Actor Type", with: @goals_attain_goal.actor_type_id
    fill_in "Attainment", with: @goals_attain_goal.attainment
    fill_in "End Date", with: @goals_attain_goal.end_date
    fill_in "Goal", with: @goals_attain_goal.goal_id
    fill_in "Score", with: @goals_attain_goal.score
    fill_in "Start Date", with: @goals_attain_goal.start_date
    fill_in "Validity", with: @goals_attain_goal.validity
    click_on "Create Goals attain goal"

    assert_text "Goals attain goal was successfully created"
    click_on "Back"
  end

  test "updating a Goals attain goal" do
    visit goals_attain_goals_url
    click_on "Edit", match: :first

    fill_in "Actor", with: @goals_attain_goal.actor_id
    fill_in "Actor Type", with: @goals_attain_goal.actor_type_id
    fill_in "Attainment", with: @goals_attain_goal.attainment
    fill_in "End Date", with: @goals_attain_goal.end_date
    fill_in "Goal", with: @goals_attain_goal.goal_id
    fill_in "Score", with: @goals_attain_goal.score
    fill_in "Start Date", with: @goals_attain_goal.start_date
    fill_in "Validity", with: @goals_attain_goal.validity
    click_on "Update Goals attain goal"

    assert_text "Goals attain goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Goals attain goal" do
    visit goals_attain_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goals attain goal was successfully destroyed"
  end
end
