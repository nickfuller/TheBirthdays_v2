class GigsController < ApplicationController

  def index
    @gigs = Gig.all
    @upcoming_gigs = Gig.where("date > ?", DateTime.now).order("date asc")
    @past_gigs = Gig.where("date < ?", DateTime.now).order("date desc")
    respond_to do |format|
      format.html
      format.json { render :json => @gigs }
    end
  end

  def new
		@gig = Gig.new
  end

  def create
    @gig = Gig.new
    @gig.date = params[:date]
    @gig.venue = params[:venue]
    @gig.street = params[:street]
    @gig.city = params[:city]
    @gig.zipcode = params[:zipcode]
    @gig.ticket_price = params[:ticket_price]
    if @gig.save
      flash[:gig_created] = "A gig on #{params[:date]} at #{params[:venue]} has been added to the site!"
      redirect_to gig_url(@gig.id)
    else
      flash[:gig_not_created] = "Please fill in all required fields before submitting."
      render 'new'
    end
  end

  def show
    @gig = Gig.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @gig }
    end
  end

  def edit
    @gig = Gig.find_by_id(params[:id])
  end

  def update
    @gig = Gig.find_by_id(params[:id])
    @gig.date = params[:date]
    @gig.venue = params[:venue]
    @gig.street = params[:street]
    @gig.city = params[:city]
    @gig.zipcode = params[:zipcode]
    @gig.ticket_price = params[:ticket_price]
    if @gig.update_attributes(params[:gigs])
      flash[:gig_updated] = "The gig on #{params[:date]} at #{params[:venue]} has been updated."
      redirect_to gig_url(@gig.id)
    else
      flash[:gig_not_updated] = "Please fill in all required fields before submitting."
      render 'edit'
    end
  end

  def destroy
    Gig.find_by_id(params[:id]).destroy
    flash[:gig_destroyed] = "A gig has been deleted."
    redirect_to gigs_url
  end

end