class Comment < ActiveRecord::Base

  attr_accessible :body, :commentable_id, :commentable_type

	belongs_to :blog

end
