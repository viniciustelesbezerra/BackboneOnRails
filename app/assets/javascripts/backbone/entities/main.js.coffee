@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Main extends Users.Model
		urlRoot: '/users'

	class Users.MainCollection extends Users.Collection
		model: Users.Main
		url: '/users'
	
	API =
		getMains: ->
			users = new Users.MainCollection 
			users.fetch()
			users

		getUser: ->
			user = new Users.Main({ id: 1 })
			user.fetch()
			user

	App.reqres.addHandler "main:users", ->
		API.getMains()

	App.reqres.addHandler "show:user", ->
		API.getUser()