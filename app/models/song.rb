class Song < ActiveRecord::Base
  
	attr_accessible :title, :audio, :lyric, :chart, :tablature, :album_id
	
	belongs_to :album
	
	mount_uploader :audio, AudioUploader

end
