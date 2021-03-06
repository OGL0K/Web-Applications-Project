require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get songs_url
    assert_response :success
  end

  test "should get songs" do
    get songs_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Spotifay'
    assert_select 'h1', 'My Songs'
    assert_select 'p', 'Welcome to your songs. You can add, delete, add it to your favourites and even add notes to your songs.'
  end

  test "should get new" do
    get new_song_url
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post songs_url, params: { song: { album: @song.album, artist: @song.artist, duration: @song.duration, title: @song.title + " create"} }
    end

    assert_redirected_to song_url(Song.last)
  end

  test "should show song" do
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    patch song_url(@song), params: { song: { album: @song.album, artist: @song.artist, duration: @song.duration, title: @song.title } }
    assert_redirected_to song_url(@song)
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end
end
