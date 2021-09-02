require 'rails_helper'

RSpec.describe 'edit movie page' do
  it 'has form to edit movie' do

    movie = create(:movie)

    visit "/movies/#{movie.id}/edit"
    expect(current_path).to eq("/movies/#{movie.id}/edit")

    fill_in('Name', with: 'New Movie Test')
    fill_in('Year', with: '1997')
    fill_in('Academy award', with: 'true')

    click_button 'Submit changes'

    expect(current_path).to eq("/movies/#{movie.id}")
    expect(page).to have_content('true')
  end

end
