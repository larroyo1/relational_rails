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

  it 'shows only those movies where academy_award is true' do
    movie1 = create(:movie)
    movie2 = create(:movie)
    movie3 = create(:movie)
    movie4 = create(:movie)
    movie5 = create(:movie)
    movie6 = create(:movie)
    movie7 = create(:movie)

    visit '/movies'
    expect(page).to_not have_content(false)
  end

  it 'has a button to destroy artist' do
    actor = create(:actor)

    visit "/actors/#{actor.id}"

    expect(current_path).to eq("/actor/#{actor.id}")
    expect(page).to have_content(actor.name)
    click_button "Delete this actor"
    expect(page).to_not have_content(actor.name)
  end
end
