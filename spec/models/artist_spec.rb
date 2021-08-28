require 'rails_helper'

RSpec.describe Artist do

  it 'returns count of songs an artist has produced' do
    artist = Artist.create(name: 'Bad Artist', debut_year: 2021, grammy_winner: false)
    song1 = artist.songs.create(name: 'A Bad Movie', length: 1997, top_100: true)
    song2 = artist.songs.create(name: 'A Worse Movie', length: 1998, top_100: true)
    song3 = artist.songs.create(name: 'The Worst Movie', length: 1999, top_100: true)
    expect(artist.song_count).to eq(3)
  end


end
