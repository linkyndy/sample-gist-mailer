class Mail
	include ActiveModel::Validations

	attr_accessor :name, :email, :confirm_email, :gist_url, :country, :city

	validates :name, :presence => true
	validates :email, :with => /@/, :presence => true
	validates :confirm_email, :if => :fields_similar?(:confirm_email, :email)
	validates :gist_url, :with => URI::regexp(%w(http https)), :presence => true
	validates :country, :presence => true
	validates :city, :presence => true

	def fields_similar?(who, whom)
		who == whom
	end