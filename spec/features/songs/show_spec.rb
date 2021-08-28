require 'rails_helper'

RSpec.describe 'song show page' do

  it 'it finds song by id and returns attributes' do
    song1 = create(:song)

    visit "/songs/#{song1.id}"
    expect(page).to have_content(song1.name)
    expect(page).to have_content(song1.top_100)
    expect(page).to have_content(song1.length)
  end 
end
