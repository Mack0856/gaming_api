# This pulls in all your specs from the javascripts directory into Jasmine:
#
# spec/javascripts/*_spec.js.coffee
# spec/javascripts/*_spec.js
# spec/javascripts/*_spec.js.erb
#
#= require jquery
#= require underscore
#= require backbone
#= require games

#= require_tree ../../app/assets/javascripts/templates
#= require_tree ../../app/assets/javascripts/games/routers
#= require_tree ../../app/assets/javascripts/games/models
#= require_tree ../../app/assets/javascripts/games/collections
#= require_tree ../../app/assets/javascripts/games/views
#= require_tree ./games
