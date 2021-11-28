class Note < ActiveRecord::Base
  belongs_to :song
  validates :title, :song, presence: true
end
