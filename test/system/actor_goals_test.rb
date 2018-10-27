require "application_system_test_case"

class ActorGoalsTest < ApplicationSystemTestCase
  setup do
    @actor_goal = actor_goals(:one)
  end

  test "visiting the index" do
    visit actor_goals_url
    assert_selector "h1", text: "Actor Goals"
  end

  test "creating a Actor goal" do
    visit actor_goals_url
    click_on "New Actor Goal"

    fill_in "Actor", with: @actor_goal.actor_id
    fill_in "Actor Type", with: @actor_goal.actor_type_id
    fill_in "Enddate", with: @actor_goal.enddate
    fill_in "Goal", with: @actor_goal.goal_id
    fill_in "Score", with: @actor_goal.score
    fill_in "Startdate", with: @actor_goal.startdate
    fill_in "Validity", with: @actor_goal.validity
    click_on "Create Actor goal"

    assert_text "Actor goal was successfully created"
    click_on "Back"
  end

  test "updating a Actor goal" do
    visit actor_goals_url
    click_on "Edit", match: :first

    fill_in "Actor", with: @actor_goal.actor_id
    fill_in "Actor Type", with: @actor_goal.actor_type_id
    fill_in "Enddate", with: @actor_goal.enddate
    fill_in "Goal", with: @actor_goal.goal_id
    fill_in "Score", with: @actor_goal.score
    fill_in "Startdate", with: @actor_goal.startdate
    fill_in "Validity", with: @actor_goal.validity
    click_on "Update Actor goal"

    assert_text "Actor goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor goal" do
    visit actor_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor goal was successfully destroyed"
  end
end
