class Song < ActiveRecord::Base
  
	attr_accessible :title, :lyric, :chart, :tablature, :recording, :category, :songable_id, :songable_type
	
	belongs_to :songable, :polymorphic => true
	
	has_many :tags, :as => :tagable
	
	
	mount_uploader :audio, AudioUploader

end
