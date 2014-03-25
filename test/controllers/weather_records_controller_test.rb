require 'test_helper'

class WeatherRecordsControllerTest < ActionController::TestCase
  setup do
    @weather_record = weather_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_record" do
    assert_difference('WeatherRecord.count') do
      post :create, weather_record: { description: @weather_record.description, temp: @weather_record.temp, zip: @weather_record.zip }
    end

    assert_redirected_to weather_record_path(assigns(:weather_record))
  end

  test "should show weather_record" do
    get :show, id: @weather_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_record
    assert_response :success
  end

  test "should update weather_record" do
    patch :update, id: @weather_record, weather_record: { description: @weather_record.description, temp: @weather_record.temp, zip: @weather_record.zip }
    assert_redirected_to weather_record_path(assigns(:weather_record))
  end

  test "should destroy weather_record" do
    assert_difference('WeatherRecord.count', -1) do
      delete :destroy, id: @weather_record
    end

    assert_redirected_to weather_records_path
  end
end
