require 'rails_helper'

RSpec.describe 'song show page' do

  it 'it finds song by id and returns attributes' do
    song1 = create(:song)

    visit "/songs/#{song1.id}"

    expect(current_path).to eq("/songs/#{song1.id}")
    expect(page).to have_content(song1.name)
    expect(page).to have_content(song1.top_100)
    expect(page).to have_content(song1.length)
  end

  it 'shows only those songs where academy_award is true' do
    song1 = create(:song)
    song2 = create(:song)
    song3 = create(:song)
    song4 = create(:song)
    song5 = create(:song)
    song6 = create(:song)
    song7 = create(:song)

    visit '/songs'
    expect(page).to_not have_content(false)
  end
end
