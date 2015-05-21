Homework w10-d03

#### Learning Objectives
- Practice creating Views in Backbone
- Practice adding listeners on Backbone Views for models and collections
- Practice adding event listeners to views for user interactions

# Grumblr 2.0

### Part 0

Update your grumble model (in your rails app and js model as apporpriate) to have the following 4 properties,
all strings:

- an author 	(it's just the author's name as a string)
- a body 		(the main content of the grumble post)
- an avatar_url (a string pointing to an image url)
- a title

#### Seed Script

Write a seed script to populate your database with grumbles. If you need an image url for the avatar_url property, I humbly suggest:

- http://www.placecage.com
- http://www.fillmurray.com
- http://www.stevensegallery.com
- http://www.nicenicejpg.com
- http://placebear.com

### Part 1
Create a handlebars template for a single grumble. A grumble should have:

- an author
- a title
- an avatar
- the content
- a delete button

### Part 2

Define a new view for a single grumble. This view should render the grumble template with the data from that view's specific model.

- the classname each of these views should be set to `grumble`
- Add listeners for change and destroy events on the views model.
- Add an event listener for the delete button on each view. 
  - When the delete button is clicked the view should be removed from the page
  - The model attached to that view should also be removed from the database

### Part 3

Define a Grumble List View. This view should have a collection assigned to it.

- The el for this view should be set to the div with an id of `grumble-list`
- Add listeners for add and reset events on the view's collection
  - When a new model is added to the collection, a new view should be created for that model and it should be prepended to the page
  - When the collection is reset, new views should be created for all models and they should be appended to the page

### Bonus! Grumble Form

Define a template for a new grumble form.

Define a Form View. This view should contain a form for creating a new Grumble.

- This view should make use of the global Grumble Collection.
- Add event listeners on this view so that when the form is submitted it will:
  - take the values from the form's inputs
  - create a new model and add it to the collection
  - the new model should be persisted in the database

