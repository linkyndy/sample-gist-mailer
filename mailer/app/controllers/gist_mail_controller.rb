class GistMailController < ApplicationController
	def new
	end

	def confirm
	end

	def send_mail
	end

	def load_cities
		@cities = Country.where(name: params[:country_name]).first.cities
    	respond_to do |format|
      		format.js
    	end
	end
end
