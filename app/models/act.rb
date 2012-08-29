class Act < ActiveRecord::Base
  attr_accessible :name, :url
	has_many :events
end
