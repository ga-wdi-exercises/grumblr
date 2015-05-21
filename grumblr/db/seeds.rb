# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

grumbles= Grumble.create([
  {title:"Do it!", author:"Bigdaddy", avatar_url:"http://www.placecage.com/gif/200/300", body:"Don't Shoot meeee!"},
  {title:"OOooo!", author:"Fillmurray", avatar_url:"http://www.fillmurray.com/200/300", body:"Now I get it!"},
  {title:"Hold it!", author:"Thecriminal", avatar_url:"http://www.stevensegallery.com/200/300", body:"Don't move a muscle... waya!"},
  {title:"Swag!", author:"Fashionguy", avatar_url:"http://www.nicenicejpg.com/600/400", body:"I got a nice hair america"},
  {title:"Manbearpig", author:"Zooguy", avatar_url:"http://placebear.com/200/300", body:"ROAR! hear me Rawr!"},
  ])
