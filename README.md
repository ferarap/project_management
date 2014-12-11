project_management 
==================

Pet project to test ember in Ruby on Rails

Allowing ember support
-----------------------------
Here I detail the steps for install Ember suppor in a Rails app.
These steps comes from the Ember tutorial of Vic Ramon http://ember.vicramon.com/

#### Remove turbolinks prefrences

	Gemfile
	Application Javascript (app/assets/javascripts/application.js)
	Layout (app/views/layouts/application.html.erb)

#### Add ember gems

	gem 'ember-rails'
	gem 'ember-source'
	gem 'emblem-rails'

exceute bundle to install the gems

#### Generate the ember skeleton

	rails g ember:bootstrap -n App --javascript-engine coffee

#### Install ember 1.5.0 and ember Data 1.0.0 beta 7

	rails g ember:install --tag=v1.5.0 --ember
	rails g ember:install --tag=v1.0.0-beta.7 --ember-data

####Configurate the ember version for ever enviroment

```
# config/environments/test.rb
config.ember.variant = :development

# config/environments/development.rb
config.ember.variant = :development

# config/environments/production.rb
config.ember.variant = :production
```

#### Require jquery_ujs

```
# app/assets/javascripts/application.js.coffee
#= require jquery_ujs
```
