require 'rails_helper'

RSpec.describe 'actors show page' do

  it 'it finds actor by id and returns attributes' do
    actor1 = create(:actor)

    visit "/actors/#{actor1.id}"

    expect(current_path).to eq("/actors/#{actor1.id}")
    expect(page).to have_content(actor1.name)
    expect(page).to have_content(actor1.year_first_film)
    expect(page).to have_content(actor1.academy_award)
  end
end
