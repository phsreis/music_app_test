# Project Details

## Objective

The main purpose of this project is to create a music collection application. Login screen, Sign In as common user and Administrator parameters, creation of music albums that are addressed to artists, options to create, show, edit and delete albums. The artists were loaded from an API. ASDF, Rails, Bootstrap, SQLite, Rake were used for this. **All the necessary gems have been included in the Gemfile**.

## Configuration

This project runs with **Ruby**, version `3.3.0`, and **Rails** `7.1.3.2`. If it's needed it can be used a version controller as [ASDF](https://www.lucascaton.com.br/2020/02/17/instalacao-do-ruby-do-nodejs-no-ubuntu-linux-usando-asdf).<span style="color:red">**Observation: When installing ASDF, disregard the mentioned versions in the guide and take the current ones as relevant. Always verify the documentation on the official website of the tool to be installed.**</span>

In this project, it's used SQLite, if it's need to be change to run on your local machine, it can be done on [database.yml](config/database.yml)

To execute the project, follow the steps bellow:

```console
$ bundle install
$ bin/rails db:create && db:migrate
$ bin/rails server
```

To import the artists it was used Rake Task:

```console
$ rails album:artist
```
To grant quality with the code it was used rubocop. To execute it:

```console
$ bundle exec rubocop
```
