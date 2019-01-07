require "application_system_test_case"

class EquipmentControllersTest < ApplicationSystemTestCase
  setup do
    @equipment_controller = equipment_controllers(:one)
  end

  test "visiting the index" do
    visit equipment_controllers_url
    assert_selector "h1", text: "Equipment Controllers"
  end

  test "creating a Equipment controller" do
    visit equipment_controllers_url
    click_on "New Equipment Controller"

    click_on "Create Equipment controller"

    assert_text "Equipment controller was successfully created"
    click_on "Back"
  end

  test "updating a Equipment controller" do
    visit equipment_controllers_url
    click_on "Edit", match: :first

    click_on "Update Equipment controller"

    assert_text "Equipment controller was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment controller" do
    visit equipment_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment controller was successfully destroyed"
  end
end
