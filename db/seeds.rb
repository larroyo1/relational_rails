require 'factory_bot_rails'

FactoryBot.build_list(:actor, 5)

puts "created #{Actor.count} Actors"

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
#
# Movie.create(name: "Biodiversity: Wild About Life!", year: 1997, academy_award: false, actor_id: actor1.id)
