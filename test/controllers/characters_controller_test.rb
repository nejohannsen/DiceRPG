require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { age: @character.age, background: @character.background, character_name: @character.character_name, concept: @character.concept, crossroads: @character.crossroads, description: @character.description, eyes: @character.eyes, gear: @character.gear, gender: @character.gender, hair: @character.hair, height: @character.height, history: @character.history, notes: @character.notes, player_name: @character.player_name, race: @character.race, weight: @character.weight } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, background: @character.background, character_name: @character.character_name, concept: @character.concept, crossroads: @character.crossroads, description: @character.description, eyes: @character.eyes, gear: @character.gear, gender: @character.gender, hair: @character.hair, height: @character.height, history: @character.history, notes: @character.notes, player_name: @character.player_name, race: @character.race, weight: @character.weight } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end