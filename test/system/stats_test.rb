require "application_system_test_case"

class StatsTest < ApplicationSystemTestCase
  setup do
    @stat = stats(:one)
  end

  test "visiting the index" do
    visit stats_url
    assert_selector "h1", text: "Stats"
  end

  test "should create stat" do
    visit stats_url
    click_on "New stat"

    fill_in "Athlete", with: @stat.athlete_id
    fill_in "Concept", with: @stat.concept_id
    fill_in "Game", with: @stat.game_id
    fill_in "Value", with: @stat.value
    click_on "Create Stat"

    assert_text "Stat was successfully created"
    click_on "Back"
  end

  test "should update Stat" do
    visit stat_url(@stat)
    click_on "Edit this stat", match: :first

    fill_in "Athlete", with: @stat.athlete_id
    fill_in "Concept", with: @stat.concept_id
    fill_in "Game", with: @stat.game_id
    fill_in "Value", with: @stat.value
    click_on "Update Stat"

    assert_text "Stat was successfully updated"
    click_on "Back"
  end

  test "should destroy Stat" do
    visit stat_url(@stat)
    click_on "Destroy this stat", match: :first

    assert_text "Stat was successfully destroyed"
  end
end
