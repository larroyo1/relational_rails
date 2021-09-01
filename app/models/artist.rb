class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  def song_count
    songs.count
  end
end
