# Overview

This is based on screencast from codeschool, delayed job


Things you may want to cover:

* Ruby version

Ruby version 2.4.0  
Rails version 5.0.2


* System dependencies

* Configuration

  + Run `bundle install`  
  + Set the gmail username and password to environment variables `GMAIL_USER` and `GMAIL_PWD`  
  + Google account need to enable less secure apps for testing.


* Database creation

* Database initialization

  - `rake db:migrate`
  - `rake db:setup`


* Code Generation:

  - `rails generate delayed_job:active_record`
  - `rake db:migrate`
  - `rails g scaffold User name:string email:string`
  - `rake db:migrate`
  - `rails g mailer user_mailer`

* Creating a user:

  `$ rails c`
  `$ User.create(name: 'John')`


* Run jobs: 


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)
  - `rake jobs:work` Note: that this may take some time, about 30 seconds plus, but it does send the mail.

* Deployment instructions


## Console Commands:

- Create a user: `User.create(name: 'John')`
- See delayed jobs: `Delayed::Job.count`


## Issues

- Not Sending Emails when not using the delayed job.
