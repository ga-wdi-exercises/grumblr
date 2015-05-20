# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Grumble.destroy_all

Grumble.create([
  {
    body: "It's hot and the air conditioning isn't working.",
    author: "Me",
    avatar_url: "http://www.placecage.com/101/100",
    title: "First world problems"
  },
  {
    body: "There is no ice cream in the freezer. I want ice cream.",
    author: "Preston",
    avatar_url: "http://www.fillmurray.com/100/100",
    title: "First-er world problems"
  },
  {
    body: "It ain't easy being green.",
    author: "Kermit",
    avatar_url: "http://placebear.com/100/100",
    title: "Muppet problems"
  },
  {
    body: "What is the deal with airplane food?",
    author: "Jerry Seinfeld",
    avatar_url: "http://www.stevensegallery.com/101/102",
    title: "Problems about nothing"
  }
])
