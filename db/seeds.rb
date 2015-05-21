# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

grumblers = Grumbler.create([
	{author:"Preston Straight", body:"I am grumblin' about making this grumblr!",  avatar_url: "http://www.placecage.com/100/100",
    title: "Coding Problems"},
	{author:"Toby", body:"I ran out of peanuts!!!",    avatar_url: "http://www.stevensegallery.com/100/101",
    title: "First world problems"},
	{author:"Adrian", body:"No AC in this mofo",  avatar_url: "http://www.placebear.com/101/101",
    title: "Hot Problems"},
	{author:"Ali", body:"Too many traffic lights",   avatar_url: "http://www.fillmurray.com/101/100",
    title: "Driving Problems"}
])