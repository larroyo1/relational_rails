require 'rails_helper'

RSpec.describe 'actors index page' do
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

    it 'it finds actor by id and returns attributes' do
      actor1 = create(:actor)

      visit "/actors/#{actor1.id}"
      expect(page).to have_content(actor1.name)
      expect(page).to have_content(actor1.debut_year)
      expect(page).to

      have_content(actor1.academy_award)
    end

end
