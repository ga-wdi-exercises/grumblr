# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


grumbles = Grumble.create([
  {body:"Learning to Code in the Dark", author:"Me", avatar_url:"http://placebear.com/200/300", title:"Something Random"},
  {body:"Deciphering GA's Homework Instuctions", author:"Another Person", avatar_url:"http://placebear.com/200/300", title:"Homework Words"},
  {body:"Learning to Learn from Programmers (and failing miserably)", author:"Yet Another Person", avatar_url:"http://placebear.com/200/300", title:"Things I have to Write"},
  {body:"Cheating Shamelessly (Piggybacking on other peoples code)", author:"Person 4", avatar_url:"http://placebear.com/200/300", title:"More Words"},
])
