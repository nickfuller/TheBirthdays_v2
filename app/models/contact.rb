class Contact < ActiveRecord::Base

  attr_accessible :email, :name, :phone, :role, :venue_id, :act_id

	belongs_to :contactable, :polymorphic => true

end
