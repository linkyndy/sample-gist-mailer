class GistMail < ActiveRecord::Base
	has_no_table

	# attr_accessor :name, :email, :email_confirmation, :gist_url, :country, :city
	column :name, :string
	column :email, :string
	column :gist_url, :string
	column :country_name, :string
	column :city_name, :string

	validates :name, presence: true
	validates :email, format: {with: /@/}, confirmation: true, presence: true
	validates :email_confirmation, presence: true
	validates :gist_url, format: {with: /(http)|(https)/}, presence: true
	validates :country_name, presence: true
	validates :city_name, presence: true

	validate do
		errors.add(:country_name, 'Invalid country') unless Country.exists?(name: self.country_name)
		errors.add(:city_name, 'Invalid city') unless City.exists?(name: self.city_name) && City.where(name: self.city_name).first.country.name == self.country_name
	end
end