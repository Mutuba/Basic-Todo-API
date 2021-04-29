# README
[![Build Status](https://travis-ci.org/Mutuba/Basic-Todo-API.svg?branch=master)](https://travis-ci.org/Mutuba/Basic-Todo-API)

# README

* Ruby Basic Todo API

* Requirements This application uses Ruby version 2.7.2 To install, use rvm or rbenv.

* RVM

`rvm install 2.6.3`

`rvm use 2.6.3`

* Rbenv

`rbenv install 2.6.3`

* Bundler Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed I recommend bundler version 2.0.2. To install:


* You need Rails. The rails version being used is rails version 6

* To install:

`gem install rails -v '~> 6'` 

* Installation To get up and running with the project locally, follow the following steps.

* Clone the app

* With SSH

`git@github.com:Mutuba/Basic-Todo-API.git`

* With HTTPS

`https://github.com/Mutuba/Basic-Todo-API.git`


* Move into the directory and install all the requirements.

* cd Basic-Todo-API

* check out to master branch

* run `bundle install` to install application packages

* Run `rails db:create` to create a databse for the application

* Run `rails db:migrate` to run database migrations and create database tables

* The application can be run by running the below command:-

`rails s` or `rails server`

* The application has tests as it was implemented using TDD.

* To run tests, run the following command:-

` bundle exec rspec`

* This will show test coverage when all tests have run.
