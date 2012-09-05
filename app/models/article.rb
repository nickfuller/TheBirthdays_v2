class Article < ActiveRecord::Base
  attr_accessible :title, :body, :category, :user_id  
	belongs_to :user # posting bandmember
	has_many :comments, :dependent => :destroy
	has_many :users, :through => :comments # commenting fans
	#has_and_belongs_to_many :tags
	validates_presence_of :title, :body

	def self.categories
		categories = []
		all.each	do |blog|
			categories << blog.category
		end
		return categories.uniq
	end

end
