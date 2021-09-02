require 'rails_helper'

RSpec.describe 'create new artist page' do
  it 'has form to create new artist' do

    visit '/artists/new'
    expect(current_path).to eq('/artists/new')

    fill_in('Name', with: 'New Artist Test')
    fill_in('Debut year', with: '1997')
    fill_in('Grammy winner', with: 'false')

    click_button 'Create'


    expect(current_path).to eq('/artists')
    expect(page).to have_content('New Artist Test')
  end

end
