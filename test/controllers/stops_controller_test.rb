require "test_helper"

class StopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stop = stops(:one)
  end

  test "should get index" do
    get stops_url
    assert_response :success
  end

  test "should get new" do
    get new_stop_url
    assert_response :success
  end

  test "should create stop" do
    assert_difference("Stop.count") do
      post stops_url, params: { stop: { Back_Of_Card: @stop.Back_Of_Card, Front_Of_Card: @stop.Front_Of_Card, GPS_X: @stop.GPS_X, GPS_Y: @stop.GPS_Y, Hidden_Card: @stop.Hidden_Card, Stop_Name: @stop.Stop_Name, category_id: @stop.category_id } }
    end

    assert_redirected_to stop_url(Stop.last)
  end

  test "should show stop" do
    get stop_url(@stop)
    assert_response :success
  end

  test "should get edit" do
    get edit_stop_url(@stop)
    assert_response :success
  end

  test "should update stop" do
    patch stop_url(@stop), params: { stop: { Back_Of_Card: @stop.Back_Of_Card, Front_Of_Card: @stop.Front_Of_Card, GPS_X: @stop.GPS_X, GPS_Y: @stop.GPS_Y, Hidden_Card: @stop.Hidden_Card, Stop_Name: @stop.Stop_Name, category_id: @stop.category_id } }
    assert_redirected_to stop_url(@stop)
  end

  test "should destroy stop" do
    assert_difference("Stop.count", -1) do
      delete stop_url(@stop)
    end

    assert_redirected_to stops_url
  end
end
