# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Grumble.destroy_all

Grumble.create([
	{body:"Monday mornings are annoying", author:"grumpy Monday", avatar_url:"http://www.fillmurray.com/200/300", title:"Monday"},
	{body:"People texting on the god damn crosswalk during rush hour", author:"Ali Topaloglu", avatar_url:"http://www.stevensegallery.com/350/500", title:"Steven Segal"},
	{body:"living in Ankara sucks big time", author:"Everyone from Ankara", avatar_url:"http://livinginankara.tumblr.com/image/88324242941", title:"Ankara"},
	{body:"I can't have fun when bros and basics walk in to a bar", author:"not a bro", avatar_url:"http://www.fillmurray.com/600/400", title:"Nigtlife"},
	{body:"Friday is close yet so far", author:"WDI Students", avatar_url:"http://www.fillmurray.com/456/400", title:"Real problems"}
	])