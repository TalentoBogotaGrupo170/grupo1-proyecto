require "application_system_test_case"

class IdentTypesTest < ApplicationSystemTestCase
  setup do
    @ident_type = ident_types(:one)
  end

  test "visiting the index" do
    visit ident_types_url
    assert_selector "h1", text: "Ident Types"
  end

  test "creating a Ident type" do
    visit ident_types_url
    click_on "New Ident Type"

    fill_in "Name", with: @ident_type.name
    click_on "Create Ident type"

    assert_text "Ident type was successfully created"
    click_on "Back"
  end

  test "updating a Ident type" do
    visit ident_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ident_type.name
    click_on "Update Ident type"

    assert_text "Ident type was successfully updated"
    click_on "Back"
  end

  test "destroying a Ident type" do
    visit ident_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ident type was successfully destroyed"
  end
end
