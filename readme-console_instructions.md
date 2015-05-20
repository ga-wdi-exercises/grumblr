##w10d02 Homework- Backbone/Rails Frontend/Backend Interface
#Console Commands:

#Create models
var grumbl1 = new GrumblModel({body:"I don't understand the question, and I won't respond to it.", author:"Lucile Bluth"})
var grumbl2 = new GrumblModel({body:"Do these effectively hide my thunder?", author:"Tobias Funke"})
var grumbl3 = new GrumblModel({body:"I've made a huge mistake.", author:"George Oscar Bluth"})
var grumbl4 = new GrumblModel({body:"Baby, you got yourself a stew going.", author:"Carl Weathers"})

#Update a model
grumbl3.set({body:"I hear the jury's still out on science."})

#Save models to backend
grumbl1.save()
grumbl2.save()
grumbl3.save()
grumbl4.save()

#Add models to new collection
var quotes = new GrumblsCollection([grumbl1, grumbl2, grumbl3, grumbl4])

#Add a new model to backend
quotes.create(new GrumblModel({body:"You should go pop a tent in front with your cousin Maeby.", author:"Michael Bluth"}))
