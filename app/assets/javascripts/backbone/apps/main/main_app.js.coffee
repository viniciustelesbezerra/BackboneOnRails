@Demo.module "MainApp", (MainApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =
		populateMain: ->
			MainApp.Populate.Controller.populateMain()
	
	MainApp.on "start", ->
		API.populateMain()