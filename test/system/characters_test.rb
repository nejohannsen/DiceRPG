require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Age", with: @character.age
    fill_in "Background", with: @character.background
    fill_in "Character Name", with: @character.character_name
    fill_in "Concept", with: @character.concept
    fill_in "Crossroads", with: @character.crossroads
    fill_in "Description", with: @character.description
    fill_in "Eyes", with: @character.eyes
    fill_in "Gear", with: @character.gear
    fill_in "Gender", with: @character.gender
    fill_in "Hair", with: @character.hair
    fill_in "Height", with: @character.height
    fill_in "History", with: @character.history
    fill_in "Notes", with: @character.notes
    fill_in "Player Name", with: @character.player_name
    fill_in "Race", with: @character.race
    fill_in "Weight", with: @character.weight
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Age", with: @character.age
    fill_in "Background", with: @character.background
    fill_in "Character Name", with: @character.character_name
    fill_in "Concept", with: @character.concept
    fill_in "Crossroads", with: @character.crossroads
    fill_in "Description", with: @character.description
    fill_in "Eyes", with: @character.eyes
    fill_in "Gear", with: @character.gear
    fill_in "Gender", with: @character.gender
    fill_in "Hair", with: @character.hair
    fill_in "Height", with: @character.height
    fill_in "History", with: @character.history
    fill_in "Notes", with: @character.notes
    fill_in "Player Name", with: @character.player_name
    fill_in "Race", with: @character.race
    fill_in "Weight", with: @character.weight
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
