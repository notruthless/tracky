# Tracky
Toy Task Tracking App (based on my [Starter Rails App](https://github.com/notruthless/starter_rails))


- Create, view and update tasks
- Create, view and update users
- Assign a user to a task

### Running the app
- Must have RVM and ruby-2.1.2 installed
- Clone the repo
- `bundle install`
- `rake db:seed` (if you want sample users)
- `bundle exec rails server`
- Point your browser at `http://localhost:3000`

###Configuration settings:
```
    # whether to send a validation email for new accounts
  Rails.configuration.x.validate_account_activation = false

    # the name of the app (to use for the title, etc)
  Rails.configuration.x.app_title = "Starter App"
```
