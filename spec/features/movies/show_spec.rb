require 'rails_helper'

RSpec.describe 'movies show page' do

  it 'it finds movie by id and returns attributes' do
    movie1 = create(:movie)

    visit "/movies/#{movie1.id}"

    expect(current_path).to eq("/movies/#{movie1.id}")
    expect(page).to have_content(movie1.name)
    expect(page).to have_content(movie1.year)
    expect(page).to have_content(movie1.academy_award)
  end
end
