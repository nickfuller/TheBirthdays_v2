class Song < ActiveRecord::Base
	# What's the use of the :category attribute? I think that was to delineate between releases, 
	attr_accessible :title, :lyric, :chart, :tablature, :recording, :category, :album_id, :user_id, :remote_recording_url
	belongs_to :album
	belongs_to :user
	has_many :films
	has_many :pictures
	#has_and_belongs_to_many :tags
	mount_uploader :recording, AudioUploader
end
