require 'rails_helper'

RSpec.describe 'create new actor page' do
  it 'has form to create new actor' do

    visit '/actors/new'
    expect(current_path).to eq('/actors/new')

    fill_in('Name', with: 'New Actor Test')
    fill_in('Year first film', with: '1997')
    fill_in('Academy award', with: 'false')

    click_button 'Create'

    expect(current_path).to eq('/actors')
    expect(page).to have_content('New Actor Test')
  end

end
