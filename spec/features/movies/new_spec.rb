require 'rails_helper'

RSpec.describe 'create new movie page' do
  it 'has form to create new movie' do

    visit '/movies/new'
    expect(current_path).to eq('/movies/new')

    fill_in('Name', with: 'An Okayish Movie')
    fill_in('Year', with: '1997')
    fill_in('Academy award', with: 'false')

    click_button 'Create'

    expect(current_path).to eq('/movies')
    expect(page).to have_content('An Okayish Movie')
  end

end
