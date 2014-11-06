class GistMail
	include ActiveModel::Validations

	attr_accessor :name, :email, :email_confirmation, :gist_url, :country, :city

	validates :name, presence: true
	validates :email, with: /@/, confirmation: true, presence: true
	validates :email_confirmation, presence: true
	validates :gist_url, with: URI::regexp(%w(http https)), presence: true
	validates :country, presence: true
	validates :city, presence: true
end