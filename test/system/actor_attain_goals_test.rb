require "application_system_test_case"

class ActorAttainGoalsTest < ApplicationSystemTestCase
  setup do
    @actor_attain_goal = actor_attain_goals(:one)
  end

  test "visiting the index" do
    visit actor_attain_goals_url
    assert_selector "h1", text: "Actor Attain Goals"
  end

  test "creating a Actor attain goal" do
    visit actor_attain_goals_url
    click_on "New Actor Attain Goal"

    fill_in "Actor Goal", with: @actor_attain_goal.actor_goal_id
    fill_in "Actor", with: @actor_attain_goal.actor_id
    fill_in "Actor Type", with: @actor_attain_goal.actor_type_id
    fill_in "Attainment", with: @actor_attain_goal.attainment
    fill_in "Enddate", with: @actor_attain_goal.enddate
    fill_in "Goal", with: @actor_attain_goal.goal_id
    fill_in "Score", with: @actor_attain_goal.score
    fill_in "Startdate", with: @actor_attain_goal.startdate
    fill_in "Validity", with: @actor_attain_goal.validity
    click_on "Create Actor attain goal"

    assert_text "Actor attain goal was successfully created"
    click_on "Back"
  end

  test "updating a Actor attain goal" do
    visit actor_attain_goals_url
    click_on "Edit", match: :first

    fill_in "Actor Goal", with: @actor_attain_goal.actor_goal_id
    fill_in "Actor", with: @actor_attain_goal.actor_id
    fill_in "Actor Type", with: @actor_attain_goal.actor_type_id
    fill_in "Attainment", with: @actor_attain_goal.attainment
    fill_in "Enddate", with: @actor_attain_goal.enddate
    fill_in "Goal", with: @actor_attain_goal.goal_id
    fill_in "Score", with: @actor_attain_goal.score
    fill_in "Startdate", with: @actor_attain_goal.startdate
    fill_in "Validity", with: @actor_attain_goal.validity
    click_on "Update Actor attain goal"

    assert_text "Actor attain goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor attain goal" do
    visit actor_attain_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor attain goal was successfully destroyed"
  end
end
