require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name}
    it { should validate_presence_of :year}
    it { should validate_presence_of :academy_award}
  end

  describe 'Assocations' do
    it { belong_to :actor}
  end
end
