class User < ActiveRecord::Base
  attr_accessible :name, :role, :email, :password, :password_confirmation
	validates_presence_of :email, :password, :password_confirmation
	validates_uniqueness_of :email
	has_secure_password
	has_many :blogs # if bandmember
	has_many :comments
	has_many :films
	has_many :pictures
	has_many :songs
end
