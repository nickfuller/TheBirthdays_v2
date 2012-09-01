class Gig < ActiveRecord::Base

  attr_accessible :date, :cover, :poster, :venue_id

	belongs_to :venue
	
	#has_and_belongs_to_many :tags
	has_many :sets
	has_many :acts, :through => :sets
	has_many :films
	has_many :pictures

end
