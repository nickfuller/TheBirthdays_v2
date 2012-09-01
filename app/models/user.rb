class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :category

	has_many :blogs # if bandmember
	has_many :comments
	has_many :films
	has_many :pictures
	has_many :songs

end
