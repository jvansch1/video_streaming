# README

# Setup

## Installing Rails

This app uses rails 6.0.0.rc1. You can install and get a tutorial at http://installrails.com/

## Installing gems

Once Rails is installed type `rails -v` in your console to ensure that `rails 6.0.0.rc1` shows up.

Once you see this you should be able to run `bundle install` to install all the gems present in `Gemfile`. If you get an error along the lines of `bundler cannot be found`, run `gem install bundler` and then try again.

## Starting server

To start the server, type `bundle exec rails s` in your console. If this is successful, visit `localhost:3000`. If you see a message that says `Yay! You're on rails` then everything has worked.
