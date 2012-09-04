class Blog < ActiveRecord::Base

  attr_accessible :title, :body, :category, :user_id  

	#has_and_belongs_to_many :tags
	has_many :comments
	has_many :users, :through => :comments # commenting fans
	
	belongs_to :user # posting bandmember
	
	def self.categories
		categories = []
		all.each	do |blog|
			categories << blog.category
		end
		return categories.uniq
	end

end
