class CommentsController < ApplicationController
	
	before_filter :redirect_if_not_signed_in
	before_filter :only => [ :update, :destroy ] do |action|
		redirect_if_not_authorized(current_user.id) # Comment.find(params[:id]).user_id
	end

	def create
		@article = Article.find_by_id(params[:comment][:article_id])
		@user = User.find_by_id(params[:comment][:user_id])
		@comment = Comment.new
		if @comment.save
			flash[:notice] = "Successfully commented."
			redirect_to articles_url
		else
			render :action => "new"
		end
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
		redirect_to article_url(@comment.article_id)
	end

end
