# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	
grumblers = Grumbler.create([
	{author:"Test author 1", body:"one body"},
	{author:"Test author 2", body:"two body"},
	{author:"Test author 3", body:"third body"},
	{author:"Test author 4", body:"four body"}
])