class Blog < ActiveRecord::Base

  attr_accessible :title, :body, :category, :user_id  

	has_many :tags, :as => :tagable
	has_many :comments, :as => :commentable
	has_many :films, :as => :filmable
	has_many :pictures, :as => :pictureable
	
	belongs_to :user

end
