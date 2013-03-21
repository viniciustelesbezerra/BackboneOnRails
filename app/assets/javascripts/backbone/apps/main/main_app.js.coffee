@Demo.module "MainApp", (MainApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	class MainApp.Router extends Marionette.AppRouter
		appRoutes:
			"users": "populateMain"
			#//"users/:id": "showUsers" 

	API =
		populateMain: ->
			MainApp.Populate.Controller.populateMain()

	App.addInitializer ->
		new MainApp.Router		
			controller: API

	#//MainApp.on "start", ->
		#//API.populateMain()