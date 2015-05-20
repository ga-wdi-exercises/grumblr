js actions
-----------

1. var grumble1 = new GrumbleModel()
    grumble1.set({body: "ow my head hurts!", author:"keith"})
    grumble1.save()
2.  var grumble2 = new GrumbleModel({body: "man, it's getting hot out!", author: "keith"})
grumble2.save()
3. var grumble3 = new GrumbleModel({body: "dammit, we're out of popchips!", author:"keith"}).save()
4. var grumble4 = new GrumbleModel({body:"i'm tired.  Time to go to bed.", author:"keith"}).save()

Collection
----------
5. var gcollection = new GrumblesCollection([grumble1, grumble2, grumbl3, grumble4])

6.var grumble5 = new GrumbleModel({body:"FINALLY done!", author:"keith"})
  gcollection.add(grumble5)
  gcollection.get(grumble5).save()
