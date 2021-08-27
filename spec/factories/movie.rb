FactoryBot.define do
  factory :movie do
    name { Faker::Movie.unique.title }
    year { Faker::Number.within(range: 1930..2021) }
    academy_award { true }
    association :actor, factory: :actor
  end
end
