class Contact < ActiveRecord::Base

  attr_accessible :email, :name, :phone

	belongs_to :venue
	belongs_to :act

end
