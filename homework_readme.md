grumble = new GrumbleModel()
grumble.set({body: "much tired", author: "Doge"})
grumble1 = new GrumbleModel()
grumble1.set({body: "such humid", author: "Doge"})
grumble2 = new GrumbleModel()
grumble2.set({body: "how about 'no'", author: "Grumpy Cat"})
grumble3 = new GrumbleModel()
grumble3.set({body: "stop stealing my bananas", author: "Winston the Cat"})


grumble.save().done(function(response){
  console.log(response)})
  .fail(function(){
    console.log("this failed")
    })

- create a grumblr backbone collection object that contains the 4 grumblr objects above

collection.set([grumble, grumble1, grumble2, grumble3])

- create a new grumblr within that collection that gets saved to the database
