@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Main extends Users.Model

	class Users.MainCollection extends Users.Collection
		model: Users.Main
		url: '/users'
		parse: (res) ->
			console.log res
			res

	
	API =
		getMains: ->
			colls = new Users.MainCollection

			result = []

			colls.fetch
				async: false,
            	success: (user) ->     
              		result.push user.models[0].attributes

			#new Users.MainCollection [
			#	{ name: "x" }
			#	{ name: "y" }
			#	{ name: "z" }
			#	result
			#]

			console.log result
			#new Users.MainCollection result
	
	App.reqres.addHandler "main:users", ->
		API.getMains()