require 'test_helper'

class EquipmentControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_controller = equipment_controllers(:one)
  end

  test "should get index" do
    get equipment_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_controller_url
    assert_response :success
  end

  test "should create equipment_controller" do
    assert_difference('EquipmentController.count') do
      post equipment_controllers_url, params: { equipment_controller: {  } }
    end

    assert_redirected_to equipment_controller_url(EquipmentController.last)
  end

  test "should show equipment_controller" do
    get equipment_controller_url(@equipment_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_controller_url(@equipment_controller)
    assert_response :success
  end

  test "should update equipment_controller" do
    patch equipment_controller_url(@equipment_controller), params: { equipment_controller: {  } }
    assert_redirected_to equipment_controller_url(@equipment_controller)
  end

  test "should destroy equipment_controller" do
    assert_difference('EquipmentController.count', -1) do
      delete equipment_controller_url(@equipment_controller)
    end

    assert_redirected_to equipment_controllers_url
  end
end
