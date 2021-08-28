require 'rails_helper'

RSpec.describe 'songs by artist page' do

  it 'shows all songs by an artist' do

    artist = create(:artist)
    song = create(:song, artist_id: artist.id)

    visit "artists/#{artist.id}/songs"
    save_and_open_page
    expect(page).to have_content(song.name)
    expect(page).to have_content(song.top_100)
    expect(page).to have_content(song.length)

  end
end
