class Event < ActiveRecord::Base
  attr_accessible :act_id, :gig_id

	belongs_to :act
	belongs_to :gig
	
end
