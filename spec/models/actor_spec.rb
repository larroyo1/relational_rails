require 'rails_helper'

RSpec.describe Actor do

  it 'returns count of movies an actor has been in' do
    actor = Actor.create(name: 'Bad Actor', year_first_film: 2021, academy_award: false)
    movie1 = actor.movies.create(name: 'A Bad Movie', year: 1997, academy_award: true)
    movie2 = actor.movies.create(name: 'A Worse Movie', year: 1998, academy_award: true)
    movie3 = actor.movies.create(name: 'The Worst Movie', year: 1999, academy_award: true)
    expect(actor.movie_count).to eq(3)
  end
  
end
