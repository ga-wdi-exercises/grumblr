-var collection = new Grumbles()
 grumblers are created


- var grumble1 = new Grumble
- var grumble2 = new Grumble
- var grumble3 = new Grumble
- var grumble4 = new Grumble

##grumble1.set({body:"It's too cold at GA student workspaces", author:"GrumpyCat"})
child {cid: "c1", attributes: Object, _changing: false, _previousAttributes: Object, changed: Object…}
##grumble2.set({body:"The guy on the bikelane is too close to me", author:"needy sorority girl"})
child {cid: "c2", attributes: Object, _changing: false, _previousAttributes: Object, changed: Object…}
##grumble3.set({body:"There is too much sunlight in my apartment", author:"Ali Topaloglu"})
child {cid: "c3", attributes: Object, _changing: false, _previousAttributes: Object, changed: Object…}
##grumble4.set({body:"Papers too crumbly", author:"Allison Little"})
child {cid: "c4", attributes: Object, _changing: false, _previousAttributes: Object, changed: Object…}

grumble1.save()
grumble2.save()
grumble3.save()
grumble4.save()

var grumbles = new Grumbles([grumble1, grumble2, grumble3, grumble4])

grumbles.create({body:"red line blows", author:"everyone that lives on the redline"})
##child {cid: "c5", attributes: Object, collection: child, _changing: false, _previousAttributes: Object…}