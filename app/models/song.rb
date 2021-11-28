class Song < ActiveRecord::Base
  has_many :notes, dependent: :destroy
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :artist, presence: true
  validates :album, presence: true
  validates :duration, presence: true

end
