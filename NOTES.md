# Step 1: Integrate Basic Theme to Asset Pipeline

[X] / - And see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow users to CRUD lists

Does it impact the DB?

Does it impact my URLs? '/lists/1'

ListsController
  #index
  - see all their lists
  - doubles as the #new action since it has the form to create a new list on the index page
  / - Index all the lists...

- create a new list

- show a list

[X] - need a model
[X] - need a controller
[X] - generate a resource to do these both

feature driven development so let's make our links real.



lists
  has_many items

items
  belongs to a list


Step 3: Add items to a list

- Make the items in a list real
  - a list has_many items
  - items belongs_to list

  lists       Name
    1      Grocery List
    2      Shopping List

  items
  id       Description      list_id
   1           Milk             1
   2          Cookies           1
   3           Shirt            2
   4           Book             2





CREATE ACTION for an ITEM in a LIST - what is the URL / HTTP method for that?

  - The form is already present in the list show page.
  - What URL does this form imply?

  POST '/items' #=> Doesn't describe which list we are adding an item too?

  An item doesn't exist in our application outside of the context of the list it belongs to

  So insteaad, we want a nested resource - items are nested in terms of URLs under their parent list:

  POST '/lists/:id/items' #=> see explanation here: https://youtu.be/OsinhhQLmRk?t=21m9s 

  when creating forms for nested resources, can pass in an array, where the first element is the parent object.
  E.g.) form_for([@list, @item]) #=> rails knows to pass in 'list_items_path(@list)'

Does it impact the DB?
  - probably need an items table associated with a list.

Does it impact my URLs? '/lists/1'


Step 4: Adding validations 

Validate that lists have name
Validate that items have a description

Step 5: I want to add state/progress (complete, incomplete) to Items in a List
  - marking items as complete or incomplete

  What URLs do I need and how might my DB change?
  - the idea of an item being completed or incomplete require data
  - new forms for updating the status of an item - which mean new URL

  /lists/:list_id/items => PUT/PATCH /lists/:list_id/items/:id

  add this to view:
  <input class="toggle" type="checkbox">

  I need that JS function to submit the form when the checkbox is clicked

  # REFACTOR 1: Start using partials in lists/show

Step 6: Deleting Items from a List

Step 7: Fix Down Arrow on Make a List form


*********************************************************

  through the todomvc lecture video series:

  1) assets and managing lists lv:

   - copy in the css base theme from todomvc github repo into my project and saved in assets/stylesheets/todomvc_base.css
   - generated the site controller
   - added the index action in the site controller
   - added the root site#index route in config/routes.rb
   - added the site/index.html.erb in views
   - remove 'require_self' and 'require_tree .' from assets/stylesheets/application.css
   - update to 'require 'todomvc_base''
