class Picture < ActiveRecord::Base

  attr_accessible :category, :description, :image, :title

	has_and_belongs_to_many :tags
	
	belongs_to :user
	belongs_to :gig
	belongs_to :album

end
