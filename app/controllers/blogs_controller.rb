class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    respond_to do |format|
      format.html
      format.json { render :json => @blogs }
    end
  end

  def new
		@blog = Blog.new
  end

  def create
    blog = Blog.new(params[:blog])
    if blog.save
      flash[:blog_created] = "Just posted #{blog.title}."
      redirect_to blog_url(blog.id)
    else
      flash[:blog_not_created] = "Please fill in all fields before submitting."
      render 'new'
    end
  end

  def show
    @blog = Blog.find_by_id(params[:id])
		# comments = @blog.comment.all --> not ready for this yet
    respond_to do |format|
      format.html
      format.json { render :json => @blog }
    end
  end

  def edit
    @blog = Blog.find_by_id(params[:id])
		@categories = blog_categories()
  end

  def update
    @blog = Blog.find_by_id(params[:id])
    if @blog.update_attributes(params[:blog])
      flash[:blog_updated] = "The blog entry entitled #{@blog.title} has been updated."
      redirect_to blog_url(@blog.id)
    else
      flash[:blog_not_updated] = "Please fill in all fields before submitting."
      render 'edit'
    end
		@categories = blog_categories()
  end

  def destroy
    Blog.find_by_id(params[:id]).destroy
    flash[:blog_destroyed] = "A blog was just obl(og)iterated."
    redirect_to blogs_url
  end

end