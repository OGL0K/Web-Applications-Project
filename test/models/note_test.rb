require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  setup do
    @song = songs(:one)
  end

  test 'should not save emty note' do
    note = Note.new

    note.save
    refute note.valid?
  end

  test 'should save valid Note' do
    note = Note.new

    note.title = 'My Note'
    note.song = @song

    note.save
    assert note.valid?
  end

end
