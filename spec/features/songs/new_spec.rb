require 'rails_helper'

RSpec.describe 'create new song page' do
  it 'has form to create new song' do

    visit '/songs/new'
    expect(current_path).to eq('/songs/new')

    fill_in('Name', with: 'Best Song Ever')
    fill_in('Length', with: '244')
    fill_in('Grammy winner', with: 'false')

    click_button 'Create'

    expect(current_path).to eq('/songs')
    expect(page).to have_content('Best Song Ever')
  end

end
