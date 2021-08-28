require 'rails_helper'

RSpec.describe 'actors index page' do
  #let!(:actor_week_ago) { create(:actor, created_at: 1.week.ago) }
  #let!(:actor_day_ago) { create(:actor, created_at: 1.day.ago) }
  #let!(:actor_hour_ago) { create(:actor, created_at: 1.hour.ago) }
  it 'lists all actors' do
      actor1 = create(:actor)
      actor2 = create(:actor)
      actor3 = create(:actor)

      visit '/actors'

      expect(current_path).to eq('/actors')

      expect(page).to have_content(actor1.name)
      expect(page).to have_content(actor2.name)
      expect(page).to have_content(actor3.name)
  end

    xit 'actors are ordered by most recently created record and created_at is displayed' do
      actor1 = Actor.create(name: 'First Actor', year_first_film: 2021, academy_award: false)
      actor2 = Actor.create(name: 'Second Actor', year_first_film: 2021, academy_award: false)
      actor3 = Actor.create(name: 'Third Actor', year_first_film: 2021, academy_award: false)
      #visit '/actors'

      expect(Actor.order_created).to eq(actor3, actor2, actor1)

      # expect(page).to have_content(:actor_week_ago.created_at)
      # expect(page).to have_content(:actor_day_ago.created_at)
      # expect(page).to have_content(:actor_hour_ago.created_at)
      # expect(:actor_hour_ago).to appear_before(:actor_week_ago)

    end
end
