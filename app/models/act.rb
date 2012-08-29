class Act < ActiveRecord::Base
  
	attr_accessible :name, :url

	has_many :contacts
	has_many :sets
	has_many :gigs, :through => :sets

end
