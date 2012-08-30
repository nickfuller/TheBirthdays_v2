class Song < ActiveRecord::Base
  
	attr_accessible :title, :audio, :lyric, :chart, :tablature, :album_id
	
	belongs_to :album
	
	has_many :tags, :as => :tagable
	
	mount_uploader :audio, AudioUploader

end
