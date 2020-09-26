# Project

#Bootstrap Form Creator / Backend

## Install

### Clone the repository

```shell
git clone https://github.com/andrew-zimmer/bs-form-creator-backend
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle
```

### Set environment variables

Using [Figaro](https://github.com/laserlemon/figaro):

See [config/application.yml.sample](https://github.com/juliendargelos/project/blob/master/config/application.yml.sample) and contact the developer: [contact@juliendargelos.com](mailto:contact@juliendargelos.com) (sensitive data).

### Initialize the database

```shell
rails db:create db:migrate
```

### Know your routes

```shell
rails routes
```
Send all request to routes beginning in 'v1'

When accessing user data, you must provide JWT, given to you when a user successfully logs in or signs up.

### Storing user forms

All request to store user forms must be sent in params under 'forms' key. The forms key must contain the user id and the form that wil be stored.

The form itself will be stored as json in the database. So you must stringify the data before sending the data, or the database will not accept it.

``` Example using JavaScript
{
    forms: {
      user_id: userData.userId,
      form: JSON.stringify(userData.form)
    }
  }
```

This also means you must parse the form when receiving it from the database, to convert it back to an object.

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Serve

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```
