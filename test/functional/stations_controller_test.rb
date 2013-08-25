require 'test_helper'

class StationsControllerTest < ActionController::TestCase
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station" do
    assert_difference('Station.count') do
      post :create, station: { altitude: @station.altitude, city: @station.city, latitude: @station.latitude, location: @station.location, longitude: @station.longitude, postal_code: @station.postal_code, st_address1: @station.st_address1, st_address2: @station.st_address2, station_id: @station.station_id, station_name: @station.station_name, total_docks: @station.total_docks }
    end

    assert_redirected_to station_path(assigns(:station))
  end

  test "should show station" do
    get :show, id: @station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station
    assert_response :success
  end

  test "should update station" do
    put :update, id: @station, station: { altitude: @station.altitude, city: @station.city, latitude: @station.latitude, location: @station.location, longitude: @station.longitude, postal_code: @station.postal_code, st_address1: @station.st_address1, st_address2: @station.st_address2, station_id: @station.station_id, station_name: @station.station_name, total_docks: @station.total_docks }
    assert_redirected_to station_path(assigns(:station))
  end

  test "should destroy station" do
    assert_difference('Station.count', -1) do
      delete :destroy, id: @station
    end

    assert_redirected_to stations_path
  end
end
