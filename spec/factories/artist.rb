FactoryBot.define do
  factory :artist, class: Artist do
    name { Faker::Music::Hiphop.unique.artist }
    debut_year { Faker::Number.within(range: 1980..2021) }
    grammy_winner { [true, false].sample }

    end
  end
