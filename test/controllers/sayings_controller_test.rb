require 'test_helper'

class SayingsControllerTest < ActionController::TestCase
  test "should get dada_saying" do
    get :dada_saying
    assert_response :success
  end

end
