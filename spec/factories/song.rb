FactoryBot.define do
  factory :song, class: Song do
    name { Faker::Music::GratefulDead.unique.song }
    top_100 { true }
    length { Faker::Number.within(range: 100..500) }
    association :artist, factory: :artist
  end
end
