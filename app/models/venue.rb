class Venue < ActiveRecord::Base
  attr_accessible :name, :street, :city, :state, :zip, :url
	validates_presence_of :name, :street, :city, :state, :zip
	has_many :contacts
	has_many :gigs
	has_many :sets, :through => :gigs
	# can I say $ has_many :acts, :through => :sets $ ?
end
