class User < ActiveRecord::Base

  attr_accessible :name, :category, :email, :password, :password_confirmation

	has_secure_password

	has_many :blogs # if bandmember
	has_many :comments
	has_many :films
	has_many :pictures
	has_many :songs
	
	validates_uniqueness_of :email

end
