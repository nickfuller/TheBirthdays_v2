class Album < ActiveRecord::Base
  
	attr_accessible :cover_art, :date, :title

	#has_and_belongs_to_many :tags
	has_many :films
	has_many :pictures
	has_many :songs
	
end
