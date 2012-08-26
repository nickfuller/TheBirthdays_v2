class FansController < ApplicationController

  def index
    @fans = Fan.order("name asc")
    respond_to do |format|
      format.html
      format.json { render :json => @fans }
    end
  end

  def new
  end

  def create
    @fan = Fan.new
    @fan.name = params[:name]
    @fan.email = params[:email]
    @fan.password = params[:password]
    if @fan.save
      flash[:fan_created] = "#{params[:name]} is now a registered fan!"
      redirect_to fan_url(@fan.id)
    else
      flash[:fan_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_fan_url instead?
    end
  end

  def show
    @fan = Fan.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @fan }
    end
  end

  def edit
    @fan = Fan.find_by_id(params[:id])
  end

  def update
    @fan = Fan.find_by_id(params[:id])
    @fan.name = params[:name]
    @fan.email = params[:email]
    @fan.password = params[:password]
    if @fan.update_attributes(params[:fans])  # Q: Why is "fans" plural in this line?
      flash[:fan_updated] = "#{params[:name]}'s profile has been updated!"
      redirect_to fan_url(@fan.id)
    else
      flash[:fan_not_updated] = "Please fill in all fields before submitting."
      render 'edit' # Q: Could I say render edit_fan_url(@fan.id) instead?
    end
  end

  def destroy
    Fan.find_by_id(params[:id]).destroy
    flash[:fan_destroyed] = "A fan's profile has been deleted."
    redirect_to fans_url
  end

end