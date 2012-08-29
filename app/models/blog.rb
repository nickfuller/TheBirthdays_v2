class Blog < ActiveRecord::Base
  attr_accessible :body, :author, :title
end
