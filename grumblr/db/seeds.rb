# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first



# Grumble.create({body: " You've got 5 seconds... and 3 are up.", author:"steven seagal", title: "i have strong feelings against you!!!!", avatar_url:"" })
# Grumble.create({body: "f*ck you couch", author:"rick james", title: "UNITTTTYYYYY!!!!!!", avatar_url:"" })
# Grumble.create({body: "bored bored bored bored", author:"Zero", title: "", avatar_url:"" })
# Grumble.create({body: "If you do not get my sister her stories and a new room as soon as possible, then I will come down on this hospital like the hammer of Thor! The thunder of my vengeance will echo through these corridors like the gusts of a thousand winds!", author:"Dennis Reynolds", title: "Referenceing the NOrdic Gods", avatar_url:"" })



Grumble.create([

  {body: " You've got 5 seconds... and 3 are up.", author:"steven seagal", title: "i have strong feelings against you!!!!", avatar_url:"/assets/steven.jpg" },
  {body: "f*ck you couch", author:"rick james", title: "UNITTTTYYYYY!!!!!!", avatar_url:"/assets/rickjames.jpg" },
  {body: "bored bored bored bored", author:"Zero", title: "", avatar_url:"/assets/zero.jpg" },
  {body: "If you do not get my sister her stories and a new room as soon as possible, then I will come down on this hospital like the hammer of Thor! The thunder of my vengeance will echo through these corridors like the gusts of a thousand winds!", author:"Dennis Reynolds", title: "Referenceing the NOrdic Gods", avatar_url:"/assets/dennis.jpg" }
  ]);
