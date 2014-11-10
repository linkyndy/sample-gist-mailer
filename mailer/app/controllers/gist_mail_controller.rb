class GistMailController < ApplicationController
	def new
		@gist_mail = GistMail.new
	end

	def create
		@gist_mail = GistMail.new(gist_mail_params)

		if @gist_mail.valid?
			session[:data] = @gist_mail.attributes
			redirect_to '/confirm'
		else
			render 'new'
		end
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

	private
	def gist_mail_params
		params.require(:gist_mail).permit(:name, :email, :email_confirmation, :gist_url, :country_name, :city_name)
	end
end
