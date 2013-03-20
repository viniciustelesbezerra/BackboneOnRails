@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Main extends Users.Model
	
	class Users.MainCollection extends Users.Collection
		model: Users.Main
		url: '/users'
	
	API =
		getMains: ->
			userscollection = new Users.MainCollection
			console.log userscollection.fetch()
			#new Users.MainCollection [
			#	{ name: "x" }
			#	{ name: "y" }
			#	{ name: "z" }
			#]
	
	App.reqres.addHandler "main:users", ->
		API.getMains()