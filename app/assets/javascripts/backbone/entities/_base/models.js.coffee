@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Model extends Backbone.Model

@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Model extends Backbone.Model	
		destroyUserModel: ->
			@.destroy()

		#//showUserModel: ->	
	
  		updateUserModel: ->
  			#//@.set({})
			#//@.save()
	