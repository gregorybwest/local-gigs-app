# LOCAL GIGS (BACK END)

This backend works with the [Local Gigs frontend](https://github.com/gregorybwest/local-gigs-frontend).

Using Ruby version 3.0.3, Rails version 7.0.2.2

## First

Clone the repo, and then:

- Run `bundle install`
- Run `rails db:setup`
- Run `rails server`
- When the server is running, verify the database is setup correctly by going to these endpoints:
  `http://localhost:3000/users` to see a list of users.
  `http://localhost:3000/events` to see a list of events.

## Next

- When the local server is displaying the data, go to [Local Gigs frontend](https://github.com/gregorybwest/local-gigs-frontend) and follow the instructions to set up the frontend.
