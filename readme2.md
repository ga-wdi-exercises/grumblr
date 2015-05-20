Create a new readme.md file and place in it, the following JS:

- Create 4 new grumblr backbone objects.
- set attributes of a new grumblr using `.set()` for one of the grumblrs
- save the objects on the server side ( aka backend )
- create a grumblr backbone collection object that contains the 4 grumblr objects above
- create a new grumblr within that collection that gets saved to the database

** BONUS
Generate a view using your Grumblr objects and/or collections.

$(document).ready(function(){
  grumblr1 = new GrumbleModel({
    author:"Me"
    body:"Learning to Code in the Dark"
    })

  grumblr2 = newGrumbleModel({
    author:"Another Person"
    body:"Deciphering GA's Homework Instuctions"
    })
  grumblr3 = newGrumbleModel({
    author:"Yet Another Person"
    body:"Learning to Learn from Programmers (and failing miserably)"
    })
  grumblr4 = newGrumbleModel({
    author:"Person 4"
    body:"Cheating Shamelessly (Piggybacking on other peoples code)"
    })
  })

  grumblr1.set({author: "Another Clueless Student"})
  grumblr1.save()

  var Ithinkthisishowyoudoit = new GrumbleCollection()
  Ithinkthisishowyoudoit.fetch([grumblr1], [grumblr2], [grumblr3], [grumblr4])

  var grumblr5 = new GrumbleModel({author:"Tired of NewNames" body:"This Class is Turning In to Torture"})
  Ithinkthisishowyoudoit.add(grumblr5)
  grumblr5.save()
