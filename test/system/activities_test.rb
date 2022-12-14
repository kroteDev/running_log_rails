require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "Activity type", with: @activity.activity_type
    fill_in "Distance", with: @activity.distance
    fill_in "Duration", with: @activity.duration
    fill_in "Heart rate", with: @activity.heart_rate
    fill_in "Notes", with: @activity.notes
    fill_in "Pace", with: @activity.pace
    fill_in "Start", with: @activity.start
    fill_in "Steps", with: @activity.steps
    fill_in "Title", with: @activity.title
    fill_in "User", with: @activity.user_id
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "Activity type", with: @activity.activity_type
    fill_in "Distance", with: @activity.distance
    fill_in "Duration", with: @activity.duration
    fill_in "Heart rate", with: @activity.heart_rate
    fill_in "Notes", with: @activity.notes
    fill_in "Pace", with: @activity.pace
    fill_in "Start", with: @activity.start
    fill_in "Steps", with: @activity.steps
    fill_in "Title", with: @activity.title
    fill_in "User", with: @activity.user_id
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
