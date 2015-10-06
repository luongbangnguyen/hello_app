require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "login with invalid information" do
    get login_path
    #assert_template 'section/new'
    post login_path, sessions: {email: "", password: ""}
    #assert_template 'session/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  
end
