class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    respond_to do |format|
      format.html
      format.json { render :json => @blogs }
    end
  end

  def new
  end

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.body = params[:body]
    @blog.series = params[:series]
    if @blog.save
      flash[:blog_created] = "Just published blog entitled #{params[:title]}."
      redirect_to blog_url(@blog.id)
    else
      flash[:blog_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_blog_url instead?
    end
  end

  def show
    @blog = Blog.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @blog }
    end
  end

  def edit
    @blog = Blog.find_by_id(params[:id])
  end

  def update
    @blog = Blog.find_by_id(params[:id])
    @blog.title = params[:title]
    @blog.body = params[:body]
    @blog.series = params[:series]
    if @blog.update_attributes(params[:blogs])  # Q: Why is "blogs" plural in this line?
      flash[:blog_updated] = "The blog entry entitled #{params[:title]} has been updated."
      redirect_to blog_url(@blog.id)
    else
      flash[:blog_not_updated] = "Please fill in all fields before submitting."
      render 'edit' # Q: Could I say render edit_blog_url(@blog.id) instead?
    end
  end

  def destroy
    Blog.find_by_id(params[:id]).destroy
    flash[:blog_destroyed] = "A blog was just obl(og)iterated."
    redirect_to blogs_url
  end

end