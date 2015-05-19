# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

grumblers = Grumbler.create([
	{author:"Preston Straight", body:"I am grumblin' about making this grumblr!"},
	{author:"Toby", body:"I ran out of peanuts!!!"},
	{author:"Adrian", body:"No AC in this mofo"},
	{author:"Ali", body:"Too many traffic lights"}
])