class Contact < ActiveRecord::Base

  attr_accessible :email, :name, :phone, :contactable_id, :contactable_type

	belongs_to :contactable, :polymorphic => true

end
