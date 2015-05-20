grumblr1 = new GrumbleModel();
grumblr2 = new GrumbleModel();
grumblr3 = new GrumbleModel();
grumblr4 = new GrumbleModel();

grumblr1.set(
  body: "F this"
  author: "me"
  )

grumblr1.save();

grumbleCollection = new GrumbleCollections([grumblr1, grumblr2, grumblr3, grumblr4]);

grumbleCollection.add(grumblr5 = new GrumbleModel()).save()
