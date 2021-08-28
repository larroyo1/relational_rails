require 'rails_helper'

RSpec.describe 'movies by actor page' do

  it 'shows all movies by an actor' do

    actor = create(:actor)
    movie = create(:movie, actor_id: actor.id)

    visit "actors/#{actor.id}/movies"

    expect(page).to have_content(movie.name)
    expect(page).to have_content(movie.year)
    expect(page).to have_content(movie.academy_award)
  end
end
