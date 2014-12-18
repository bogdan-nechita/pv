require 'test_helper'

class SayingsControllerTest < ActionController::TestCase
  test "should get uber_saying" do
    get :uber_saying
    assert_response :success
  end

end
