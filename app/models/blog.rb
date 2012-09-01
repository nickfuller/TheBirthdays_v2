class Blog < ActiveRecord::Base

  attr_accessible :title, :body, :category, :user_id  

	#has_and_belongs_to_many :tags
	has_many :comments
	has_many :users, :through => :comments # commenting fans
	
	belongs_to :user # posting bandmember

end
