class Gig < ActiveRecord::Base
  attr_accessible :date, :cover, :poster
	has_many :events
end
