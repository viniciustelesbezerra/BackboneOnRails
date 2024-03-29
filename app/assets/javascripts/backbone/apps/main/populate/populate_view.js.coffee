@Demo.module "MainApp.Populate", (Populate, App, Backbone, Marionette, $, _) ->
	
	class Populate.Main extends Marionette.ItemView
		template: "main/populate/templates/_main"
		tagName: "tr"
		events: 
    		"click a#update": "updateUser"
    		"click a#destroy": "destroyUser"

  		updateUser: ->
  			@.model.updateUserModel() 

  		destroyUser: ->
  			@.model.destroyUserModel() if confirm "Are you sure?"

	class Populate.Mains extends Marionette.CompositeView
		template: "main/populate/templates/mains"
		itemView: Populate.Main
		itemViewContainer: "tbody"

	class Populate.Shows extends Marionette.ItemView
		template: "main/populate/templates/shows"