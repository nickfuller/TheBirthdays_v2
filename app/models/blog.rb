class Blog < ActiveRecord::Base

  attr_accessible :title, :body, :category  

	has_many :tags, :as => :tagable

end
