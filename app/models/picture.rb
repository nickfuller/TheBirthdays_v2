class Picture < ActiveRecord::Base

  attr_accessible :category, :description, :image, :pictureable_id, :pictureable_type, :title

	has_many :tags, :as => :tagable
	
	belongs_to :pictureable, :polymorphic => true

end
