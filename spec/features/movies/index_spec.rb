require 'rails_helper'

RSpec.describe 'movies index page' do
  it 'list all movies' do

    movie1 = create(:movie)
    movie2 = create(:movie)
    movie3 = create(:movie)

    visit '/movies'

    expect(current_path).to eq('/movies')
    # save_and_open_page
    expect(page).to have_content(movie1.name)
    expect(page).to have_content(movie2.name)
    expect(page).to have_content(movie3.name)
  end

  it 'it finds movie by id and returns attributes' do
    movie1 = create(:movie)

    visit "/movies/#{movie1.id}"
    expect(page).to have_content(movie1.name)
    expect(page).to have_content(movie1.year)
    expect(page).to have_content(movie1.academy_award)

  end
end
