FactoryBot.define do
  factory :actor, class: Actor do
    name { Faker::Name.unique.name }
    year_first_film  { Faker::Number.within(range: 1930..2021) }
    academy_award { [true, false].sample }
  end
end
