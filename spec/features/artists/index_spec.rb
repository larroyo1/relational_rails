require 'rails_helper'

RSpec.describe 'artists index page' do
  it 'lists all artists' do

        artist1 = create(:artist)
        artist2 = create(:artist)
        artist3 = create(:artist)

        visit '/artists'

        expect(current_path).to eq('/artists')

        expect(page).to have_content(artist1.name)
        expect(page).to have_content(artist2.name)
        expect(page).to have_content(artist3.name)
  end

  it 'it finds artist by id and returns attributes' do
    artist1 = create(:artist)

    visit "/artists/#{artist1.id}"
    expect(page).to have_content(artist1.name)
    expect(page).to have_content(artist1.debut_year)
    expect(page).to have_content(artist1.grammy_winner)

  end
end
