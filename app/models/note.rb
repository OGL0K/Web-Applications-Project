class Note < ActiveRecord::Base
  belongs_to :song
  validates :note, :song, presence: true
end
