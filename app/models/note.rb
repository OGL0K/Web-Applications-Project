class Note < ApplicationRecord
  belongs_to :song
  validates :note, :song, presence: true
end
