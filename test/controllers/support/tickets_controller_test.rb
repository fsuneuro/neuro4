require 'test_helper'

class Support::TicketsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
