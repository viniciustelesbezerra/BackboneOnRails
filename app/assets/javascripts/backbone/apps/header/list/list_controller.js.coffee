@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listHeader: ->
			headerView = @getHeaderView App.request "header:entities"
			App.headerRegion.show headerView
		
		getHeaderView: (links) ->
			new List.Headers
				collection: links