class RemoveAuthorAgainFromBlogs < ActiveRecord::Migration

  def change
    remove_column :blogs, :author
	end 

end
