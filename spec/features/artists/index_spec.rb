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
end
