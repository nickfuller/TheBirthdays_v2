class Comment < ActiveRecord::Base
  attr_accessible :body, :blog_id, :user_id
	belongs_to :blog
	belongs_to :user
end
