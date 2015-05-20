```
var grumble1 = new Grumble({ body: "It's hot and the air conditioning isn't working.", author: "Me" });  
var grumble2 = new Grumble({ body: "There is no ice cream in the freezer. I want ice cream.", author: "Preston" });  
var grumble3 = new Grumble({ body: "It ain't easy being green.", author: "Kermit" });  
var grumble4 = new Grumble({ body: "Test", author: "Test"});  

grumble4.set({ body: "What is the deal with airplane food?", author: "Jerry Seinfeld" });  

grumble1.save();  
grumble2.save();  
grumble3.save();  
grumble4.save();  

var grumbles = new Grumbles([ grumble1, grumble2, grumble3, grumble4 ]);  

var grumble5 = new Grumble({ body: "People from Phoenix are called Phoenicians.", author: "Louis C.K." });  
grumbles.add( grumble5 );  
grumble5.save();  
```
