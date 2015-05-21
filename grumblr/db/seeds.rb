# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

module BuzzfeedTitleGenerator
  NUMBERS = (8..33).to_a

  ADJECTIVES = %w( awesome rediculous absurd sweet suite gnarly random quirky
                   hipster shocking alarming over-rated under-rated
                   zombie-proof )

  PLAIN_NOUNS =  ['kanye quotes', 'trading cards', 'pokemons', 'T-shirts',
                  'tornadoes', 'sneezes', 'GIFs', 'hipchat messages',
                  'cheeses', 'security vulnerabilities', 'selfies',
                  'umbrellas', 'Pixar movies', 'Justin Bieber quotes',
                  'Justice Beaver quotes']

  ACTION_NOUNS = ['tigers', 'nerds', 'grizzly bears', 'pokemons',
                  'BurgerKing employees', 'TV moms', 'TV dads',
                  'scientologists', 'WDI instructors', 'WDI students',
                  'photos of communists', 'trends', 'skateboard tricks',
                  'owls', 'guinea pigs', 'panda bears', 'chickens', 'penguins',
                  'things you didn\'t know about',
                  'things you should know about']

  ACTIVITIES =   ['eating sandwiches', 'wearing shoes',
                  'taking pictures with the queen', 'dressing as elephants',
                  'taking selfies', 'wearing sweatpants', 'wearing a tux',
                  'going to the gym', 'blogging for fun and profit',
                  'writing rails apps']

  FLOURISHES =   ['ever', 'of all time', 'that will blow your mind',
                  'that programmers hate',
                  'that will make you want to move to DC',
                  'that will make you want to leave DC',
                  'in the entire universe', 'that were better in the 90\'s',
                  'that were better in the 80\'s',
                  'that people born after 1990 wil never understand',
                  'that will make you want to wake up earlier every morning',
                  'that will make you want to call your parents']

  def self.make_title
    number = NUMBERS.sample

    if rand(100) < 50
      noun1 = PLAIN_NOUNS.sample
      noun2 = (PLAIN_NOUNS.reject { |e| e == noun1 }).sample
      title = "#{number} #{ADJECTIVES.sample} #{noun1}"
      maybe(25) { title = "#{title} and #{noun2}" }
    else
      title = "#{number} #{ACTION_NOUNS.sample} #{ACTIVITIES.sample}"
    end

    maybe(5) { title = "The #{title}" }
    maybe(25) { title = "#{title} #{FLOURISHES.sample}" }

    title
  end

  def self.maybe(odds = 50)
    yield if rand(100) < odds
  end
end



names = %w(Alif Allyson Biboy Brad Chad Jared John Julia Karen Keith Lindsey Matt Nabil Nick Noah Parmeet Phillip Preston Rodger Sarah Tyler Zachary Aaron Adrian Ali Ammie Brittany Damon Diana Don Eltahir Enoch Gwen Haleigh Isatu Janice Jocelyn Kevin Michael Nicholas Ryan Tamara Toby)

content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium alias beatae qui, in ratione unde ex facilis quae, facere repudiandae dolor deleniti, error? Impedit, magnam, eos beatae culpa eveniet aperiam'

avatars = ['http://placecage.com/100/100', 'http://fillmurray.com/100/100', 'http://placebear.com/100/100', 'http://www.stevensegallery.com/100/100']

title = %w(WOW OMG SUCH AMAZE)

names.each do |name|
  Grumble.create(author: name, title: title.sample(2).join(' '), content: BuzzfeedTitleGenerator.make_title, avatar: avatars.sample)
end



