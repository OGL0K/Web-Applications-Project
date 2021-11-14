require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'Spotifay'
    assert_select 'p', 'Welcome to Spotifay!'
    assert_select 'p', 'The easiest way of adding your songs and albums.'

  end

end
