require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'Spotifay'
    assert_select 'p', 'The best platform to listen your music, add favourite and add notes to your music. There is no ads, no play limit and you can add unlimited songs! The best thing about Spotifay is free you dont need to pay an additional charge. Have fun using Spotifay :)'

end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'Contact Me'
    assert_select 'p.contact_us', 'Please complete form to get in touch with me!'
    assert_select 'p.emailp', 'You can also send an email. My email is og00209@surrey.ac.uk.'
  end

  test "should get about" do
      get about_url
      assert_response :success

      assert_template layout: 'application'

      assert_select 'h1.about', 'About Me'
      assert_select 'p.aboutp', 'Hello my name is Oguz Gokyuzu I am the creator of Spotifay. I am 20 years old and I study Computer Science at University of Surrey. I am originally from Turkey but I live in United Kingdom to finish my university. I created this web app to give people a better experience than any other music apps do and help people that cannot afford premium membership. Your thoughts and problems are really important for me. I will do my best to answer your questions and your thoughts. We will make this app better together so dont hesitate to contact me. You can either mail me or use contact section to get in touch with us. Enjoy your free unlimited music!'
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

  test "should get songs" do
    get songs_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'My Songs'
    assert_select 'p', 'Welcome to your songs. You can add, delete, add it to your favourites and even add notes to your songs.'
  end

  test "should get notes" do
    get notes_url
    assert_response :success

    assert_select 'p', 'Your notes are listed here.'
  end

  test "should get favorites" do
    get favorites_url
    assert_response :success

    assert_select 'p', 'Your favorites are listed here.'
  end

end
