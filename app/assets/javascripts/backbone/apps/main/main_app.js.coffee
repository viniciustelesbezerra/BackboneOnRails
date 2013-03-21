@Demo.module "MainApp", (MainApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	class MainApp.Router extends Marionette.AppRouter
		appRoutes:
			"users": "populateMain"
			"users/:id": "showMain" 

	API =
		populateMain: ->
			MainApp.Populate.Controller.populateMain()
		
		showMain: ->
			MainApp.Populate.Controller.showMain()
			
	App.addInitializer ->
		new MainApp.Router		
			controller: API

	#//MainApp.on "start", ->
		#//API.populateMain()