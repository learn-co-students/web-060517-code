Abstract: 
  1. We gain flexibility
  2. Indirection

Review 
  - MVC
    - /users
  - Questions
    - controllers, then how do we get the data to erb
    - what do we have access to from each layer
      - from the view, do I have access to the model?
      - from the controller, do I have access to the view, and the model?

    /users
      GET /users
        "GET kasdjlkasj /users browser"
      server (computer)
        http server
          -> {REQUEST_PATH: "/users", method: "GET"}
        RACK
          request = Rack::Request.new()

        application code 
          /users
            1. User.all -> select * from users;
            2. @users = User.all
            3. views/users/index.html.erb
            <% @users.each do |user| %>
                <%= user.name %>
                <%= user.hometown %>
            <% end %>


    bob virginia
  - Forms
     - how to send forms to a specific action
     - how to capture information in forms
     - how to structure the data in forms
  - best practices with forms
    - structuring information
    - hydrating objects

1. request: POST '/users'
  create a new user
  response: 304 /users/1

2. request GET '/users/1'

