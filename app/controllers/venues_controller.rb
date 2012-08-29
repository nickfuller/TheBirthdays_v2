class VenuesController < ApplicationController

  def index
    @venues = Venue.order("city asc")
    respond_to do |format|
      format.html
      format.json { render :json => @venues }
    end
  end

  def new
		@venue = Venue.new
  end

  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      flash[:venue_created] = "Venue, #{@venue.name}, just uploaded!"
      redirect_to venues_url
    else
      flash[:venue_not_created] = "Please fill in all fields before submitting."
      render 'new'  
    end
  end

  def show
    @venue = Venue.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @venue }
    end
  end

  def edit
    @venue = Venue.find_by_id(params[:id])
  end

  def update
    @venue = Venue.find_by_id(params[:id])
    if @venue.update_attributes(params[:venue]) 
      flash[:venue_updated] = "Venue, #{@venue.name}, just updated."
      redirect_to venue_url(@venue.id)
    else
      flash[:venue_not_updated] = "Please fill in all fields before submitting."
      render 'edit' 
    end
  end

  def destroy
    Venue.find_by_id(params[:id]).destroy
    flash[:venue_destroyed] = "A venue has been deleted."
    redirect_to venues_url
  end

end