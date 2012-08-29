class Album < ActiveRecord::Base
  
	attr_accessible :cover_art, :date, :title

	has_many :songs
	
end
