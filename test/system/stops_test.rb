require "application_system_test_case"

class StopsTest < ApplicationSystemTestCase
  setup do
    @stop = stops(:one)
  end

  test "visiting the index" do
    visit stops_url
    assert_selector "h1", text: "Stops"
  end

  test "should create stop" do
    visit stops_url
    click_on "New stop"

    fill_in "Back of card", with: @stop.Back_Of_Card
    fill_in "Front of card", with: @stop.Front_Of_Card
    fill_in "Gps x", with: @stop.GPS_X
    fill_in "Gps y", with: @stop.GPS_Y
    fill_in "Hidden card", with: @stop.Hidden_Card
    fill_in "Stop name", with: @stop.Stop_Name
    fill_in "Category", with: @stop.category_id
    click_on "Create Stop"

    assert_text "Stop was successfully created"
    click_on "Back"
  end

  test "should update Stop" do
    visit stop_url(@stop)
    click_on "Edit this stop", match: :first

    fill_in "Back of card", with: @stop.Back_Of_Card
    fill_in "Front of card", with: @stop.Front_Of_Card
    fill_in "Gps x", with: @stop.GPS_X
    fill_in "Gps y", with: @stop.GPS_Y
    fill_in "Hidden card", with: @stop.Hidden_Card
    fill_in "Stop name", with: @stop.Stop_Name
    fill_in "Category", with: @stop.category_id
    click_on "Update Stop"

    assert_text "Stop was successfully updated"
    click_on "Back"
  end

  test "should destroy Stop" do
    visit stop_url(@stop)
    click_on "Destroy this stop", match: :first

    assert_text "Stop was successfully destroyed"
  end
end
