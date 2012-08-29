class SongsController < ApplicationController

  def index
    @songs = Song.all
    respond_to do |format|
      format.html
      format.json { render :json => @songs }
    end
  end

  def new
		@song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      flash[:song_created] = "Song, #{@song.title}, just uploaded!"
      redirect_to songs_url
    else
      flash[:song_not_created] = "Please fill in all fields before submitting."
      render 'new'  
    end
  end

  def show
    @song = Song.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @song }
    end
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    if @song.update_attributes(params[:song])
      flash[:song_updated] = "Song, #{@song.title}, just updated."
      redirect_to song_url(@song.id)
    else
      flash[:song_not_updated] = "Please fill in all fields before submitting."
      render 'edit' 
    end
  end

  def destroy
    Song.find_by_id(params[:id]).destroy
    flash[:song_destroyed] = "A song has been deleted."
		redirect_to :back # <= This ":back" means "the last url you were on"
		# 
	end
	
	
		#     if song_url
		# 	redirect_to songs_url
		# else redirect_to :back
		# end
		# if :back(params[:id]) == Song.id
		# 	redirect_to songs_url
		# else 
		# 	redirect to :back  
		#   end
end