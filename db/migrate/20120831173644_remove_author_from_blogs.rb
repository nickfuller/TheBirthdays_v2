class RemoveAuthorFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :author
	end 
end

# I ran rake db:migrate on this prior to writing in the above method, that seemed
# to make it sad. That's why we have a duplicative migration 2012083122054
