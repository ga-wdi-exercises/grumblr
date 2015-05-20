Create 4 new grumblr backbone objects.

var grumble1 = new GrumbleModel

var grumble2 = new GrumbleModel

var grumble3 = new GrumbleModel

var grumble4 = new GrumbleModel


set attributes of a new grumblr using .set() for one of the grumblrs

grumble1.set({body:"This is a dumb blog post", author:"GrumpyCatDad"})

grumble2.set({body:"Wait until your Dad gets home. He won't care about this.", author:"GrumpyCatMom"})

grumble3.set({body:"This is my normal face", author:"GrumpyCat"})

grumble4.set({body:"I can bark, but I won't.", author:"GrumpyCatDog"})


save the objects on the server side ( aka backend )

grumble1.save().done(function(response){console.log("response)}).fail(console.log("grumble not saved"))

grumble2.save().done(function(response){console.log("response)}).fail(console.log("grumble not saved"))

grumble3.save().done(function(response){console.log("response)}).fail(console.log("grumble not saved"))

grumble4.save().done(function(response){console.log("response)}).fail(console.log("grumble not saved"))


create a grumblr backbone collection object that contains the 4 grumblr objects above

var grumbles = new GrumblesCollection

grumbles.set[grumble1, grumble2, grumble3, grumble4]


create a new grumblr within that collection that gets saved to the database

grumbles.create({body:"This pen is too heavy", author:"GrumpyCatGrandma"})
