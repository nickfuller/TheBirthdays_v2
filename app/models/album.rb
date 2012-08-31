class Album < ActiveRecord::Base
  
	attr_accessible :cover_art, :date, :title

	has_many :songs
	has_many :tags, :as => :tagable
	has_many :films, :as => :filmable
	has_many :pictures, :as => :pictureable
	has_many :songs, :as => :songable
	
end
