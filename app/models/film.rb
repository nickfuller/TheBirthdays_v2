class Film < ActiveRecord::Base

  attr_accessible :description, :footage, :title

	#has_and_belongs_to_many :tags
	
	belongs_to :song
	belongs_to :gig

end
