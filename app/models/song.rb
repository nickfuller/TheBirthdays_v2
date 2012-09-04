class Song < ActiveRecord::Base
  
	# What's the use of the :category attribute?
	attr_accessible :title, :lyric, :chart, :tablature, :recording, :category, :album_id, :user_id, :remote_recording_url
	
	belongs_to :album
	belongs_to :user
	
	#has_and_belongs_to_many :tags
	has_many :films
	has_many :pictures
	
	mount_uploader :recording, AudioUploader

end
