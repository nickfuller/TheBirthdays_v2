class Contact < ActiveRecord::Base

  attr_accessible :email, :name, :phone, :role, :venue_id, :act_id

	belongs_to :venue
	belongs_to :act

end
