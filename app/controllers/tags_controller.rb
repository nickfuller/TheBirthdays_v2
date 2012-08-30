class TagsController < ApplicationController

  def index
    @tags = Tag.order("name desc")
    respond_to do |format|
      format.html
      format.json { render :json => @tags }
    end
  end

  def new
		@tag = Tag.new
  end

  def create
    tag = Tag.new(params[:tag])
    if tag.save
      flash[:tag_created] = "Tag, #{tag.name}, just uploaded!"
      redirect_to tags_url
    else
      flash[:tag_not_created] = "Please fill in all fields before submitting."
      render 'new'  
    end
  end

  def show
    @tag = Tag.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @tag }
    end
  end

  def edit
    @tag = Tag.find_by_id(params[:id])
  end

  def update
    @tag = Tag.find_by_id(params[:id])
    if @tag.update_attributes(params[:tag]) 
      flash[:tag_updated] = "Tag, #{@tag.name}, just updated."
      redirect_to tag_url(@tag.id)
    else
      flash[:tag_not_updated] = "Please fill in all fields before submitting."
      render 'edit' 
    end
  end

  def destroy
    Tag.find_by_id(params[:id]).destroy
    flash[:tag_destroyed] = "A tag has been deleted."
    redirect_to tags_url
  end

end