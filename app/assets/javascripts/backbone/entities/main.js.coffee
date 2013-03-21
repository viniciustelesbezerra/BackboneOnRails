@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Main extends Users.Model

	class Users.MainCollection extends Users.Collection
		model: Users.Main
		url: '/users'
	
	API =
		getMains: ->
			users = new Users.MainCollection 
			users.fetch()
			users

	App.reqres.addHandler "main:users", ->
		API.getMains()