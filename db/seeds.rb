require 'factory_bot_rails'

Actor.destroy_all
Movie.destroy_all

FactoryBot.create_list(:actor, 5)

# actor1 = FactoryBot.create(:actor)
# actor2 = FactoryBot.create(:actor)
# actor3 = FactoryBot.create(:actor)
# actor4 = FactoryBot.create(:actor)
# actor5= FactoryBot.create(:actor)

FactoryBot.create_list(:movie, 50)

# movie1 = FactoryBot.create(:movie)
# movie2 = FactoryBot.create(:movie)
# movie3 = FactoryBot.create(:movie)
# movie4 = FactoryBot.create(:movie)
# movie5 = FactoryBot.create(:movie)
# movie6 = FactoryBot.create(:movie)
# movie7 = FactoryBot.create(:movie)
# movie8 = FactoryBot.create(:movie)
# movie9 = FactoryBot.create(:movie)
# movie10 = FactoryBot.create(:movie)
# movie11 = FactoryBot.create(:movie)
# movie12 = FactoryBot.create(:movie)
# movie13 = FactoryBot.create(:movie)
# movie14 = FactoryBot.create(:movie)
# movie15 = FactoryBot.create(:movie)
# movie16 = FactoryBot.create(:movie)
# movie17 = FactoryBot.create(:movie)
# movie18 = FactoryBot.create(:movie)
# movie19 = FactoryBot.create(:movie)
# movie20 = FactoryBot.create(:movie)
# movie21 = FactoryBot.create(:movie)
# movie22 = FactoryBot.create(:movie)
# movie23 = FactoryBot.create(:movie)
# movie24 = FactoryBot.create(:movie)
# movie25 = FactoryBot.create(:movie)
# movie26 = FactoryBot.create(:movie)
# movie27 = FactoryBot.create(:movie)
# movie28 = FactoryBot.create(:movie)
# movie29 = FactoryBot.create(:movie)
# movie30 = FactoryBot.create(:movie)
# movie31 = FactoryBot.create(:movie)
# movie32 = FactoryBot.create(:movie)
# movie33 = FactoryBot.create(:movie)
# movie34 = FactoryBot.create(:movie)
# movie35 = FactoryBot.create(:movie)
# movie36 = FactoryBot.create(:movie)
# movie37 = FactoryBot.create(:movie)
# movie38 = FactoryBot.create(:movie)
# movie39 = FactoryBot.create(:movie)
# movie40 = FactoryBot.create(:movie)
# movie41 = FactoryBot.create(:movie)
# movie42 = FactoryBot.create(:movie)
# movie43 = FactoryBot.create(:movie)
# movie44 = FactoryBot.create(:movie)
# movie45 = FactoryBot.create(:movie)
# movie46 = FactoryBot.create(:movie)
# movie47 = FactoryBot.create(:movie)
# movie48 = FactoryBot.create(:movie)
# movie49 = FactoryBot.create(:movie)
# movie50 = FactoryBot.create(:movie)


# actor1 = Actor.create(name: "Chris Evans", year_first_film: 1997, academy_award: FALSE)
# actor2 = Actor.create(name: "Robert Downey, Jr.", year_first_film: 1970, academy_award: TRUE)
# actor3 = Actor.create(name: "Jennifer Lawrence", year_first_film: 2008, academy_award: TRUE)
# actor4 = Actor.create(name: "Channing Tatum", year_first_film: 2006, academy_award: FALSE)
# actor5 = Actor.create(name: "George Clooney", year_first_film: 1988, academy_award: TRUE)
# actor6 = Actor.create(name: "Johnny Depp", year_first_film: 1984, academy_award: TRUE)
# actor7 = Actor.create(name: "Margot Robbie", year_first_film: 2011, academy_award: TRUE)
# actor8 = Actor.create(name: "Jared Leto", year_first_film: 1995, academy_award: TRUE)
# actor9 = Actor.create(name: "Ryan Reynolds", year_first_film: 2002, academy_award: FALSE)
# actor10 = Actor.create(name: "Ryan Gosling", year_first_film: 2001, academy_award: TRUE)
# actor11 = Actor.create(name: "Scarlett Johansson", year_first_film: 1996, academy_award: TRUE)
# actor12 = Actor.create(name: "Brad Pitt", year_first_film: 1988, academy_award: TRUE)
# actor13 = Actor.create(name: "Matt Damon", year_first_film: 1988, academy_award: TRUE)
# actor14 = Actor.create(name: "Will Smith", year_first_film: 1993, academy_award: TRUE)
# actor15 = Actor.create(name: "Paul Rudd", year_first_film: 1995, academy_award: FALSE)

# Movie.create(name: "Biodiversity: Wild About Life!", year: 1997, academy_award: false, actor_id: actor1.id)

puts "created #{Actor.count} Actors and #{Movie.count} Movies"
