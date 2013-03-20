@Demo.module "MainApp.Populate", (Populate, App, Backbone, Marionette, $, _) ->
	
	class Populate.Main extends Marionette.ItemView
		template: "main/populate/templates/_main"
		tagName: "li"
	
	class Populate.Mains extends Marionette.CompositeView
		template: "main/populate/templates/mains"
		itemView: Populate.Main
		itemViewContainer: "ul"