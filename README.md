# Tracky
Toy Task Tracking App (based on my [Starter Rails App](https://github.com/notruthless/starter_rails))

- Create, view and update tasks
- Create, view and update users
- Assign a user to a task

Simplifying design decisions
- Each task can have a single owner and and a single assignee
- Users can be assigned to tasks they own.


### Running the app
- Must have RVM and ruby-2.1.2 installed
- Clone the repo
- `bundle install`
- `bundle exec rake db:migrate`
- `bundle exec rake db:seed` (if you want sample users)
- `bundle exec rails server`
- Point your browser at `http://localhost:3000`

###Configuration settings:
```
    # whether to send a validation email for new accounts
    # (currently set to false for demo usage)
  Rails.configuration.x.validate_account_activation = false
```
### To Do:
- Lots and lots and lots of clean up.
- Don't let users edit and assign tasks created by other people. (yeah that's a big one)
- More clean up
- View tests for the task views and related integration tests
- Didn't even look at window resize behavior except to see it's wrong.
- Boy it's ugly
- Better navigation - back buttons, cancel buttons, stuff like that.
