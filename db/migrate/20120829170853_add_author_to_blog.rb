class AddAuthorToBlog < ActiveRecord::Migration
  def change
		remove_column :blogs, :series
    add_column 		:blogs, :author, :string
  end
end
