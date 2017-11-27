# README FOR FARMVILLE

## Introduction
This repository contains a sandbox rails app. The app allows landowner accounts to:
- get an overall view of all farmers and their farms in the collective
- assess the performance of farm holdings
- asesss the performance of individual inventory contribution to the overall revenue of the farm.
- compare current performance to historical data
- recruit new farmers to manage the land
- allocate available land for the creation of a new farm
- sync data for selected inventory type with pre-existing record system
- input data manually for inventory without existing record system
- download data in .csv format for accounting purposes

The app allows farmer accounts to:
- view the performance of farm holdings
- view the performance of individual inventory contribution to the overall revenue of the farm.
- compare current performance to historical data

## System Specs/Gem List
- Development:
  - Bootstrap
  - Jquery-Rails
  - Simple_form
  - Rubocop
  - Faker
  - Devise

- Test:
  - Rspec-rails
  - Shoulda-Matchers
  - Factory_bot_rails
  - Rails-controller-testing

## ## Installation guide
Follow this guide for installation of the program.
1. Using your terminal, clone the repository to your computer.
```
git clone https://github.com/shirlaine/farmville.git
cd farmville
```

2. Install dependencies
```
bundle install
```

3. Install specific gems

Follow the instructions for gem installation for the following gems.
Simple_form - https://github.com/plataformatec/simple_form
Devise 4.0 - https://github.com/plataformatec/devise
Bootstrap 4.0 Beta - https://github.com/twbs/bootstrap
Rubocop - https://github.com/github/rubocop-github
Jquery-Rails - https://github.com/rails/jquery-rails

4. Create the database and seed(if necessary)
```
rake db:create db:migrate db:seed
```

## App Deployment
Run
```
rails s
```
In your browser, type
```
localhost:3000/
```
