@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Collection extends Backbone.Collection

@Demo.module "Users", (Users, App, Backbone, Marionette, $, _) ->
	
	class Users.Collection extends Backbone.Collection	
		console.log @