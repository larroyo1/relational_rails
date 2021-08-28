class Artist < ApplicationRecord
  has_many :songs

  def song_count
    songs.count
  end
end
