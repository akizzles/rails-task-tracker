# Step 1: Integrate Basic Theme to Asset Pipeline

[X] / - And see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow users to CRUD lists

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

Does it impact the DB?
Does it impact my URLs? '/lists/1'





lists
  has_many items

items
  belongs to a list


  through the todomvc lecture video series:

  1) assets and managing lists lv:

   - copy in the css base theme from todomvc github repo into my project and saved in assets/stylesheets/todomvc_base.css
   - generated the site controller
   - added the index action in the site controller
   - added the root site#index route in config/routes.rb
   - added the site/index.html.erb in views
   - remove 'require_self' and 'require_tree .' from assets/stylesheets/application.css
   - update to 'require 'todomvc_base''
