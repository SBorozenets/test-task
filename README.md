# README

## Test task

## Installation

1. Clone repo
2. `bundle install`
3. `rake db:create`
4. `rake db:migrate`
5. Add variables `API_KEY` `PASSWORD` `SHOP_NAME` to `.env` file

## Run

1. `rails s` in the first terminal
2. `sidekiq` in the second terminal
3. You should see one background job running in the second terminal. It should write SHOP_NAME each 3 seconds.
4. Go to `localhost:3000`, you should see 123
5. Go to `localhost:3000/sidekiq`, you should see Sidekiq dashboard

## Task
1. Create Product model with name fields
2. Create the second background job which should run each 2 seconds.
https://github.com/mperham/sidekiq - engine (`app/workers`)
https://github.com/ondrejbartas/sidekiq-cron - scheduler (`config/schedule.yml`)
3. According to https://shopify.dev/docs/admin-api/graphql/reference/queryroot#products-2020-07 get the first product (example in `workers/hard-worker.rb`) and write it's title to the Product model as a new record.
4. Write some unit tests
5. Home page should display the list of product titles
6. Javascript should update the list in continiously.(Try setInterval and JSON request)
