class CommentsController < ApplicationController

	def index
		@blog = Blog.find(params[:blog_id])
		@comments = @blog.comments
	end
	
	def new
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.build
	end
	
	def create
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.build(params[:comment])
		if @comment.save
			flash[:notice] = "Successfully commented."
			redirect_to blog_url(@comment.article_id)
		else
			render :action => "new"
		end
	end
	
	def edit
		@comment = Comment.find(params[:id])
	end
	
	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(params[:comment])
			flash[:notice] = "Successfully updated comment."
		else
			render :action => "edit"
		end
	end
	
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:notice] = "Successfully destroyed comment."
		redirect_to blog_url(@comment.blog_id)
	end

end
