require "application_system_test_case"

class HealthpromentitiesTest < ApplicationSystemTestCase
  setup do
    @healthpromentity = healthpromentities(:one)
  end

  test "visiting the index" do
    visit healthpromentities_url
    assert_selector "h1", text: "Healthpromentities"
  end

  test "creating a Healthpromentity" do
    visit healthpromentities_url
    click_on "New Healthpromentity"

    fill_in "Link", with: @healthpromentity.link
    fill_in "Mail", with: @healthpromentity.mail
    fill_in "Name", with: @healthpromentity.name
    click_on "Create Healthpromentity"

    assert_text "Healthpromentity was successfully created"
    click_on "Back"
  end

  test "updating a Healthpromentity" do
    visit healthpromentities_url
    click_on "Edit", match: :first

    fill_in "Link", with: @healthpromentity.link
    fill_in "Mail", with: @healthpromentity.mail
    fill_in "Name", with: @healthpromentity.name
    click_on "Update Healthpromentity"

    assert_text "Healthpromentity was successfully updated"
    click_on "Back"
  end

  test "destroying a Healthpromentity" do
    visit healthpromentities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Healthpromentity was successfully destroyed"
  end
end
