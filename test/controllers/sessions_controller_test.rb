require "test_helper"

class SessionsControllerTest < ActionController::TestCase
  test "should create session" do
    post :create, params: { name: 'new', room: 1 }
    assert_redirected_to chatroom_path(1)
    assert_equal User.last.id, session[:user_id]
  end

  test "should destroy session" do
    delete :destroy
    assert_redirected_to root_path
    assert_nil session[:user_id]
  end
end
