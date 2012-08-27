class SongsController < ApplicationController

  def index
    @songs = Song.order("title asc")
    respond_to do |format|
      format.html
      format.json { render :json => @songs }
    end
  end

  def new
		@song = Song.new
  end

  def create
    @song = Song.new
    @song.title = params[:title]
    @song.audio = params[:audio]
    @song.lyric = params[:lyric]
    @song.chart = params[:chart]
    @song.tablature = params[:tablature]
    if @song.save
      flash[:song_created] = "Song, #{params[:title]}, just uploaded!"
      redirect_to songs_url
    else
      flash[:song_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_song_url instead?
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
    @song.title = params[:title]
    @song.audio = params[:audio]
    @song.lyric = params[:lyric]
    @song.chart = params[:chart]
    @song.tablature = params[:tablature]    
    if @song.update_attributes(params[:songs])  # Q: Why is "songs" plural in this line?
      flash[:song_updated] = "Song, #{params[:title]}, just updated."
      redirect_to song_url(@song.id)
    else
      flash[:song_not_updated] = "Please fill in all fields before submitting."
      render 'edit' # Q: Could I say render edit_song_url(@song.id) instead?
    end
  end

  def destroy
    Song.find_by_id(params[:id]).destroy
    flash[:song_destroyed] = "A song has been deleted."
    redirect_to songs_url
  end

end