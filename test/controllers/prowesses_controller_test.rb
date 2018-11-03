require 'test_helper'

class ProwessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prowess = prowesses(:one)
  end

  test "should get index" do
    get prowesses_url
    assert_response :success
  end

  test "should get new" do
    get new_prowess_url
    assert_response :success
  end

  test "should create prowess" do
    assert_difference('Prowess.count') do
      post prowesses_url, params: { prowess: { description: @prowess.description, title: @prowess.title } }
    end

    assert_redirected_to prowess_url(Prowess.last)
  end

  test "should show prowess" do
    get prowess_url(@prowess)
    assert_response :success
  end

  test "should get edit" do
    get edit_prowess_url(@prowess)
    assert_response :success
  end

  test "should update prowess" do
    patch prowess_url(@prowess), params: { prowess: { description: @prowess.description, title: @prowess.title } }
    assert_redirected_to prowess_url(@prowess)
  end

  test "should destroy prowess" do
    assert_difference('Prowess.count', -1) do
      delete prowess_url(@prowess)
    end

    assert_redirected_to prowesses_url
  end
end
