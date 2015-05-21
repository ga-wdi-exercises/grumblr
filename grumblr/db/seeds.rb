# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Grumble.destroy_all

  grumbles = Grumble.create([
    {author:"Nick", body:"BEEES!", avatar_url:"http://www.placecage.com/200/300", title:"BEEES!",},

    {author:"Bill", body:"I'm drinking as soon as I'm done.", avatar_url:"http://www.fillmurray.com/200/300", title:"Santori Time.",},

      {author:"Steven", body:"I'm going to take you to the blood bank.", avatar_url:"http://www.stevensegallery.com/200/300", title:"Hard to Kill",},

       {author:"Bear", body:"ROOOOAR!", avatar_url:"http://placebear.com/200/300", title:"ROOOAR!",}
    ])
