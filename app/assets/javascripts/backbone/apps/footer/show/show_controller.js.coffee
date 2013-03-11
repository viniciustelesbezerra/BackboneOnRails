@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	Show.Controller =
		
		showFooter: ->
			App.footerRegion.show @getFooterView()
		
		getFooterView: ->
			new Show.Footer