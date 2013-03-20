class ApplicationController < ActionController::Base
  	protect_from_forgery
  	respond_to :json
  	
	def index
	end
	
	private
	def set_falsh_message(msg, type)
		flash[type.to_sym] = msg
	end
end	
