require 'rails_helper'

RSpec.describe 'edit artist page' do
  it 'has form to edit artist' do

    artist = create(:artist)

    visit "/artists/#{artist.id}/edit"
    expect(current_path).to eq("/artists/#{artist.id}/edit")

    fill_in('Name', with: 'New Artist Test')
    fill_in('Debut year', with: '1997')
    fill_in('Grammy winner', with: 'true')

    click_button 'Submit changes'

    expect(current_path).to eq("/artists/#{artist.id}")
    expect(page).to have_content('true')
  end

end
