require 'test_helper'

class AirplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airplane = airplanes(:one)
  end

  test "should get index" do
    get airplanes_url
    assert_response :success
  end

  test "should get new" do
    get new_airplane_url
    assert_response :success
  end

  test "should create airplane" do
    assert_difference('Airplane.count') do
      post airplanes_url, params: { airplane: { column: @airplane.column, row: @airplane.row, serial_no: @airplane.serial_no } }
    end

    assert_redirected_to airplane_url(Airplane.last)
  end

  test "should show airplane" do
    get airplane_url(@airplane)
    assert_response :success
  end

  test "should get edit" do
    get edit_airplane_url(@airplane)
    assert_response :success
  end

  test "should update airplane" do
    patch airplane_url(@airplane), params: { airplane: { column: @airplane.column, row: @airplane.row, serial_no: @airplane.serial_no } }
    assert_redirected_to airplane_url(@airplane)
  end

  test "should destroy airplane" do
    assert_difference('Airplane.count', -1) do
      delete airplane_url(@airplane)
    end

    assert_redirected_to airplanes_url
  end
end
