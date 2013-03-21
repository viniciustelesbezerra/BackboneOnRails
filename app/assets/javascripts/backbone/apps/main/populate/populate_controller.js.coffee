@Demo.module "MainApp.Populate", (Populate, App, Backbone, Marionette, $, _) ->
	
	Populate.Controller =
		populateMain: ->
			mainView = @getMainView App.request "main:users"
			App.mainRegion.show mainView
		
		getMainView: (result) ->
			new Populate.Mains
				collection: result