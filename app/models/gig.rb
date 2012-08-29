class Gig < ActiveRecord::Base

  attr_accessible :date, :cover, :poster, :venue_id

	belongs_to :venue
	
	has_many :sets
	has_many :acts, :through => :sets

end
