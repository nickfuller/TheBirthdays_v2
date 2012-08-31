class Film < ActiveRecord::Base

  attr_accessible :description, :filmable_id, :filmable_type, :footage, :title

	has_many :tags, :as => :tagable
	
	belongs_to :filmable, :polymorphic => true

end
