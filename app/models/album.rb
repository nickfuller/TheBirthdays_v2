class Album < ActiveRecord::Base
  
	attr_accessible :cover_art, :date, :title, :remote_cover_art_url

	#has_and_belongs_to_many :tags
	has_many :films
	has_many :pictures
	has_many :songs
	
	mount_uploader :cover_art, PictureUploader
	
end
