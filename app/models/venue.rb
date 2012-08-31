class Venue < ActiveRecord::Base

  attr_accessible :name, :street, :city, :state, :zip, :url

	has_many :gigs
	has_many :sets, :through => :gigs
	# can I say $ has_many :acts, :through => :sets $ ?
	has_many :contacts, :as => :contactable

end
