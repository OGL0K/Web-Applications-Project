require 'test_helper'

class SongTest < ActiveSupport::TestCase

    test 'should not save empty song' do
      song = Song.new

      song.save
      refute song.valid?
    end

    test 'should save valid song' do
      song = Song.new

      song.title = 'goosebumps'
      song.artist = 'Travis Scott'
      song.album = 'Birds In The Trap Sing McKnight'
      song.duration = '4:04'

      song.save
      assert song.valid?
    end

    test 'should not save duplicate song title' do
      song1 = Song.new

      song1.title = 'goosebumps'
      song1.artist = 'Travis Scott'
      song1.album = 'Birds In The Trap Sing McKnight'
      song1.duration = '4:04'

      song1.save
      assert song1.valid?

      song2 = Song.new

      song2.title = 'goosebumps'
      song2.artist = 'Travis Scott'
      song2.album = 'Birds In The Trap Sing McKnight'
      song2.duration = '4:04'

      song2.save
      refute song2.valid?
    end


end
