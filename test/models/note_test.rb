require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  setup do
    @song = songs(:one)
  end

  test 'should not save empty note' do
    note1 = Note.new

    note1.save
    refute note1.valid?
  end

  test 'should save valid Note' do
    note1 = Note.new

    note1.note = 'My Note'
    note1.song = @song

    note1.save
    assert note1.valid?
  end

end
