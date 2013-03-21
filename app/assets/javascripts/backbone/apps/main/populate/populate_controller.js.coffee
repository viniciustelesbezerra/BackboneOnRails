@Demo.module "MainApp.Populate", (Populate, App, Backbone, Marionette, $, _) ->
	
	Populate.Controller =
		populateMain: ->
			mainView = @getMainView App.request "main:users"
			App.mainRegion.show mainView
		
		showMain: ->
			showView = @getShowView App.request "show:user"
			App.mainRegion.show showView

		getShowView: (result) ->
			new Populate.Shows 
				model: result

		getMainView: (result) ->
			new Populate.Mains
				collection: result