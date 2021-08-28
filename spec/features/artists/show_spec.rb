require 'rails_helper'

RSpec.describe 'artists show page' do

  it 'finds artists by id and contains attributes' do
    artist = create(:artist)

    visit "/artists/#{artist.id}"

    expect(page).to have_content(artist.name)
    expect(page).to have_content(artist.debut_year)
    expect(page).to have_content(artist.grammy_winner)
  end 
end
