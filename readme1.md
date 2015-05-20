var grumbler1 = new GrumblerModel({
	author: "Peter Pan",
	body: "Think of a wonderful thought"
})

var grumbler2 = new GrumblerModel()
grumbler2.set({
	author: "Baloo the Bear",
	body: "Forget about your worries and your strife"
})

var grumbler3 = new GrumblerModel({
	author: "Mary Poppins",
	body: "In every job that must be done, there is an element of fun"
})

var grumbler4 = new GrumblerModel({
	author: "anonymous",
	body: "I'm only responsible for what I say, not for what you understand"
})

grumbler1.save()
grumbler2.save()
grumbler3.save()
grumbler4.save()

var myGrumbles = new GrumblerCollection()
myGrumbles.fetch()
myGrumbles.save()