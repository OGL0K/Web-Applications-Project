class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :artist, presence: true
  validates :album, presence: true
  validates :duration, presence: true

end
