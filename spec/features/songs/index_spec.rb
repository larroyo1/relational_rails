require 'rails_helper'

RSpec.describe 'songs index page' do
  it 'lists all songs' do
    song1 = create(:song)
    song2 = create(:song)
    song3 = create(:song)

    visit '/songs'
    #save_and_open_page
    expect(current_path).to eq('/songs')

    expect(page).to have_content(song1.name)
    expect(page).to have_content(song2.name)
    expect(page).to have_content(song3.name)
  end
end
