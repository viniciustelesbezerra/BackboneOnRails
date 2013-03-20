@Demo.module "MainApp.Populate", (Populate, App, Backbone, Marionette, $, _) ->
	
	Populate.Controller =
		
		populateMain: ->
			mainView = @getMainView App.request "main:users"
			App.mainRegion.show mainView
		
		getMainView: (links) ->
			new Populate.Mains
				collection: links