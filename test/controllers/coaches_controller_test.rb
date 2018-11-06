require 'test_helper'

class CoachesControllerTest < ActionController::TestCase
  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get timeslots" do
    get :timeslots
    assert_response :success
  end

  test "should get book" do
    get :book
    assert_response :success
  end

end
