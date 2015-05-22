# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

posts = Post.create([
  {title: "A grumble to remember" , body: "This is a grumble.", author: "Brad", avatar_url: "http://fillmurray.com/200/200"},
  {title: "Grumble in the Bronx" , body: "This is also a grumble.", author: "Steve", avatar_url: "http://fillmurray.com/200/200"},
  {title: "A grumble in the distance" , body: "The grumble 5000.", author: "Suzy", avatar_url: "http://fillmurray.com/200/200"},
  {title: "My stomach is grumbling" , body: "I'll grubmle for ya.", author: "Plaxico", avatar_url: "http://fillmurray.com/200/200"}
  ])
