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





CREATE ACTION for an ITEM in a LISt
  - what is the URL / HTTP method for that?


Does it impact the DB?
  - probably need an items table associated with a list.

Does it impact my URLs? '/lists/1'




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
