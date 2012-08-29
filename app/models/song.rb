class Song < ActiveRecord::Base
  
	attr_accessible :audio, :chart, :lyric, :tablature, :title, :album_id
	
	belongs_to :album
	
	mount_uploader :audio, AudioUploader

end
