require 'rails_helper'

RSpec.describe 'edit actor page' do
  it 'has form to edit actor' do

    actor = create(:actor)

    visit "/actors/#{actor.id}/edit"
    expect(current_path).to eq("/actors/#{actor.id}/edit")

    fill_in('Name', with: 'New Actor Test')
    fill_in('Year first film', with: '1997')
    fill_in('Academy award', with: 'true')

    click_button 'Submit changes'

    expect(current_path).to eq("/actors/#{actor.id}")
    expect(page).to have_content('true')
  end

end
