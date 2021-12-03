require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorites_url
    assert_response :success
  end

  test "should get favorites" do
    get favorites_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'Your Favorites'
    assert_select 'p', 'Your favorites are listed here.'
  end
end
