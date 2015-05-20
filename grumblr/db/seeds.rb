# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
grumbles = Grumble.create([
  { body: 'Is it monday again?', author: 'SheenieTwins', title: 'Yuck', avatar_url: "http://placesheen.com/200/300"},
  { body: 'You cant tune a fish, but you can drink like one', author: 'OffBrandHasselHoff', title: 'Im Tired', avatar_url: "http://place-hoff.com/300/400"},
  { body: 'Karaoke?', author: 'Murman', title: 'Nightlife', avatar_url: "http://www.fillmurray.com/200/300"},
  { body: 'This boat is totally sinking.', author: 'CaptainAquatica', title: 'Doh', avatar_url: "http://www.fillmurray.com/300/400"},
  { body: 'Something in my teeth.', author: 'CageRage', title: 'Hi', avatar_url: "http://www.placecage.com/gif/300/400"}
  ]);
