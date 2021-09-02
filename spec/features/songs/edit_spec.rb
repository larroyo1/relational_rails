require 'rails_helper'

RSpec.describe 'edit song page' do
  it 'has form to edit song' do

    song = create(:song)

    visit "/songs/#{song.id}/edit"
    expect(current_path).to eq("/songs/#{song.id}/edit")

    fill_in('Name', with: 'Great Song')
    fill_in('Length', with: '343')
    fill_in('Top 100', with: 'true')

    click_button 'Submit changes'

    expect(current_path).to eq("/songs/#{song.id}")
    expect(page).to have_content('true')
  end

end
