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
    @album = Album.new
    @album.title = params[:album][:title]
    @album.date = params[:album][:date]
    @album.cover_art = params[:album][:cover_art]
			# Q: When accessing model classes in a params (as we have to do re: params) do [:modelname]
    if @album.save
      flash[:album_created] = "Just posted #{params[:title]}."
      redirect_to album_url(@album.id)
    else
      flash[:album_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_album_url instead?
    end
  end

  def show
    @album = Album.find_by_id(params[:id])
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
    @album.title = params[:album][:title]
    @album.date = params[:album][:date]
    @album.cover_art = params[:album][:cover_art]
    if @album.update_attributes(params[:albums])  # Q: Why is "albums" plural in this line?
      flash[:album_updated] = "#{params[:title]} is now in the database."
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