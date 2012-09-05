class RenameBlogToArticle < ActiveRecord::Migration
  def change
  	rename_table :blogs, :articles
		remove_column :comments, :blog_id
		add_column :comments, :article_id, :integer
  end
end
