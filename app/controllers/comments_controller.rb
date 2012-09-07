class CommentsController < ApplicationController
	
	before_filter :redirect_if_not_signed_in
	before_filter :only => [ :update, :destroy ] do |action|
		redirect_if_not_authorized(current_user.id) # Comment.find(params[:id]).user_id
	end

	def create
		
		@comment = Comment.create(  
		# ABOVE: @comments is defined, because we are using it in a view (the create.js.erb view)
				body: params[:comment][:body], 
				article_id: params[:comment][:article_id], 
				user_id: params[:comment][:user_id])
		@article = Article.find_by_id(params[:comment][:article_id])
		if @comment
			flash[:notice] = "Successfully commented."
			respond_to do |format|
				format.html { redirect_to articles_url }
				format.js
			end
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
