require "application_system_test_case"

class ProwessesTest < ApplicationSystemTestCase
  setup do
    @prowess = prowesses(:one)
  end

  test "visiting the index" do
    visit prowesses_url
    assert_selector "h1", text: "Prowesses"
  end

  test "creating a Prowess" do
    visit prowesses_url
    click_on "New Prowess"

    fill_in "Description", with: @prowess.description
    fill_in "Title", with: @prowess.title
    click_on "Create Prowess"

    assert_text "Prowess was successfully created"
    click_on "Back"
  end

  test "updating a Prowess" do
    visit prowesses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @prowess.description
    fill_in "Title", with: @prowess.title
    click_on "Update Prowess"

    assert_text "Prowess was successfully updated"
    click_on "Back"
  end

  test "destroying a Prowess" do
    visit prowesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prowess was successfully destroyed"
  end
end
