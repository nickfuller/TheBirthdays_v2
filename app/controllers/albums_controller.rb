class AlbumsController < ApplicationController

  def index
    @albums = Album.order("date desc")
    respond_to do |format|
      format.html
      format.json { render :json => @albums }
    end
  end

  def new
		@album = Album.new
  end

  def create
    album = Album.new(params[:album]) 
		# Q: Is form_for the reason we can call on params[:album]?
    #	 NOTE: Because of form_for "magic", the below fields need not be specified as with form_tag.
	  #     @album.title = params[:album][:title]
	  #     @album.date = params[:album][:date]
	  #     @album.cover_art = params[:album][:cover_art]
		#	 NOTE: When accessing model classes in a params (as we have to do re: params) do [:modelname]
    if album.save
      flash[:album_created] = "Just posted #{album.title}."
      redirect_to album_url(album.id)
    else
      flash[:album_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_album_url instead?
    end
  end

  def show
    @album = Album.find(params[:id]) # Q: any reason to use .find_by_id instead of just .find?
    respond_to do |format|
      format.html
      format.json { render :json => @album }
    end
  end

  def edit
    @album = Album.find_by_id(params[:id])
  end

  def update
    @album = Album.find_by_id(params[:id])
    # @album.title = params[:album][:title]
    # @album.date = params[:album][:date]
    # @album.cover_art = params[:album][:cover_art]
    if @album.update_attributes(params[:album])
      flash[:album_updated] = "#{@album.title} is now updated."
      redirect_to album_url(@album.id)
    else
      flash[:album_not_updated] = "Please fill in all fields before submitting."
      render 'edit' # Q: Could I say render edit_album_url(@album.id) instead?
    end
  end

  def destroy
    Album.find_by_id(params[:id]).destroy
    flash[:album_destroyed] = "An album was just removed from the database."
    redirect_to albums_url
  end

end