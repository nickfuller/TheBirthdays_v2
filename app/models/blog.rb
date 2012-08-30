class Blog < ActiveRecord::Base

  attr_accessible :author, :title, :body  

	has_many :tags, :as => :tagable

end
