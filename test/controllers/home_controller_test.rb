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


  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Please complete form to get in touch with us!'
    assert_select 'p', 'Our online services are open 7/24.'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params: {name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
