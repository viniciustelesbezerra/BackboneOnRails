@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	console.log "foooooter"

	API = 
		showFooter: ->
			FooterApp.Show.Controller.showFooter()

	FooterApp.on "start", ->
		API.showFooter()		