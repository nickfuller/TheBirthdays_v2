class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :category

	has_many :comments , :as => :commentable
	has_many :films , :as => :filmable
	has_many :pictures , :as => :pictureable
	has_many :songs , :as => :songable

end
