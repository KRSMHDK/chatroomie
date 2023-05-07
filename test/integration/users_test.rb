require 'test_helper'

class UsersTest < ActionDispatch::IntegrationTest
  test 'can see the home page' do
    get '/'
    assert_select 'h1', 'The Human Zoo'
  end
end
