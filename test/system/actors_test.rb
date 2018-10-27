require "application_system_test_case"

class ActorsTest < ApplicationSystemTestCase
  setup do
    @actor = actors(:one)
  end

  test "visiting the index" do
    visit actors_url
    assert_selector "h1", text: "Actors"
  end

  test "creating a Actor" do
    visit actors_url
    click_on "New Actor"

    fill_in "Actor Type", with: @actor.actor_type_id
    fill_in "Birthdate", with: @actor.birthdate
    fill_in "Degree", with: @actor.degree_id
    fill_in "Firstname", with: @actor.firstname
    fill_in "Ident", with: @actor.ident
    fill_in "Ident Type", with: @actor.ident_type_id
    fill_in "Secondname", with: @actor.secondname
    fill_in "Secsurname", with: @actor.secsurname
    fill_in "Surname", with: @actor.surname
    click_on "Create Actor"

    assert_text "Actor was successfully created"
    click_on "Back"
  end

  test "updating a Actor" do
    visit actors_url
    click_on "Edit", match: :first

    fill_in "Actor Type", with: @actor.actor_type_id
    fill_in "Birthdate", with: @actor.birthdate
    fill_in "Degree", with: @actor.degree_id
    fill_in "Firstname", with: @actor.firstname
    fill_in "Ident", with: @actor.ident
    fill_in "Ident Type", with: @actor.ident_type_id
    fill_in "Secondname", with: @actor.secondname
    fill_in "Secsurname", with: @actor.secsurname
    fill_in "Surname", with: @actor.surname
    click_on "Update Actor"

    assert_text "Actor was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor" do
    visit actors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor was successfully destroyed"
  end
end
