class Tag < ActiveRecord::Base

  attr_accessible :name, :tagable_id, :tagable_type

	belongs_to :tagable, :polymorphic => true

end
